
-- module describing lavajato system (company, money laundering)

local cfg = module("cfg/lavajato")
local htmlEntities = module("lib/htmlEntities")
local lang = vRP.lang

local sanitizes = module("cfg/sanitizes")

-- sql
MySQL.createCommand("vRP/lavajato_tables",[[
CREATE TABLE IF NOT EXISTS vrp_user_lavajato(
  user_id INTEGER,
  name VARCHAR(30),
  description TEXT,
  capital INTEGER,
  laundered INTEGER,
  reset_timestamp INTEGER,
  CONSTRAINT pk_user_lavajato PRIMARY KEY(user_id),
  CONSTRAINT fk_user_lavajato_users FOREIGN KEY(user_id) REFERENCES vrp_users(id) ON DELETE CASCADE
);
]])

MySQL.createCommand("vRP/create_lavajato","INSERT IGNORE INTO vrp_user_lavajato(user_id,name,description,capital,laundered,reset_timestamp) VALUES(@user_id,@name,'',@capital,0,@time)")
MySQL.createCommand("vRP/delete_lavajato","DELETE FROM vrp_user_lavajato WHERE user_id = @user_id")
MySQL.createCommand("vRP/get_lavajato","SELECT name,description,capital,laundered,reset_timestamp FROM vrp_user_lavajato WHERE user_id = @user_id")
MySQL.createCommand("vRP/add_capital","UPDATE vrp_user_lavajato SET capital = capital + @capital WHERE user_id = @user_id")
MySQL.createCommand("vRP/add_laundered","UPDATE vrp_user_lavajato SET laundered = laundered + @laundered WHERE user_id = @user_id")
MySQL.createCommand("vRP/get_lavajato_page","SELECT user_id,name,description,capital FROM vrp_user_lavajato ORDER BY capital DESC LIMIT @b,@n")
MySQL.createCommand("vRP/reset_transfer","UPDATE vrp_user_lavajato SET laundered = 0, reset_timestamp = @time WHERE user_id = @user_id")

-- init
async(function()
MySQL.execute("vRP/lavajato_tables")
end)

-- api

-- return user lavajato data or nil
function vRP.getUserlavajato(user_id, cbr)
  if user_id then
    local rows = MySQL.query("vRP/get_lavajato", {user_id = user_id})
    local lavajato = rows[1]

    -- when a lavajato is fetched from the database, check for update of the laundered capital transfer capacity
    if lavajato and os.time() >= lavajato.reset_timestamp+cfg.transfer_reset_interval*60 then
      MySQL.execute("vRP/reset_transfer", {user_id = user_id, time = os.time()})
      lavajato.laundered = 0
    end

    return lavajato
  end
end

-- close the lavajato of an user
function vRP.closelavajato(user_id)
  MySQL.execute("vRP/delete_lavajato", {user_id = user_id})
end

-- lavajato interaction

-- page start at 0
local function open_lavajato_directory(player,page) -- open lavajato directory with pagination system
  if page < 0 then page = 0 end

  local menu = {name=lang.lavajato.directory.title().." ("..page..")",css={top="75px",header_color="rgba(240,203,88,0.75)"}}

  local rows = MySQL.query("vRP/get_lavajato_page", {b = page*10, n = 10})
  local count = 0
  for k,v in pairs(rows) do
    count = count+1
    local row = v

    if row.user_id ~= nil then
      -- get owner identity
      local identity = vRP.getUserIdentity(row.user_id)
      if identity then
        menu[htmlEntities.encode(row.name)] = {function()end, lang.lavajato.directory.info({row.capital,htmlEntities.encode(identity.name),htmlEntities.encode(identity.firstname),identity.registration,identity.phone})}
      end

      -- check end, open menu
      count = count-1
      if count == 0 then
        menu[lang.lavajato.directory.dnext()] = {function() open_lavajato_directory(player,page+1) end}
        menu[lang.lavajato.directory.dprev()] = {function() open_lavajato_directory(player,page-1) end}

        vRP.openMenu(player,menu)
      end
    end
  end
end

local function lavajato_enter()
  local source = source

  local user_id = vRP.getUserId(source)
  if user_id then
    -- build lavajato menu
    local menu = {name=lang.lavajato.title(),css={top="75px",header_color="rgba(240,203,88,0.75)"}}

    local lavajato = vRP.getUserlavajato(user_id)
    if lavajato then -- have a lavajato
      -- lavajato info
      menu[lang.lavajato.info.title()] = {function(player,choice)
      end, lang.lavajato.info.info({htmlEntities.encode(lavajato.name), lavajato.capital, lavajato.laundered})}

      -- add capital
      menu[lang.lavajato.addcapital.title()] = {function(player,choice)
        local amount = vRP.prompt(player,lang.lavajato.addcapital.prompt(),"")
        amount = parseInt(amount)
        if amount > 0 then
          if vRP.tryPayment(user_id,amount) then
            MySQL.execute("vRP/add_capital", {user_id = user_id, capital = amount})
            vRPclient._notify(player,lang.lavajato.addcapital.added({amount}))
          else
            vRPclient._notify(player,lang.money.not_enough())
          end
        else
          vRPclient._notify(player,lang.common.invalid_value())
        end
      end,lang.lavajato.addcapital.description()}

      -- money laundered
      menu[lang.lavajato.launder.title()] = {function(player,choice)
        local lavajato = vRP.getUserlavajato(user_id) -- update lavajato data
        local launder_left = math.min(lavajato.capital-lavajato.laundered,getDinheirosujo(user_id,value)) -- compute launder capacity
        local amount = vRP.prompt(player,lang.lavajato.launder.prompt({launder_left}),""..launder_left)
        amount = parseInt(amount)
        if amount > 0 and amount <= launder_left then
          if vRP.tryDinheirosujo ~= nil then
                if vRP.tryDinheirosujo(user_id,amount) then
            -- ADICIONAR O VALOR LAVADO
            MySQL.execute("vRP/add_laundered", {user_id = user_id, laundered = amount})
          end
          -- DAR DINHEIRO LIMPO
            vRP.giveMoney(user_id,amount)
            vRPclient._notify(player,lang.lavajato.launder.laundered({amount}))
          else
            vRPclient._notify(player,lang.lavajato.launder.not_enough())
          end
        else
          vRPclient._notify(player,lang.common.invalid_value())
        end
      end,lang.lavajato.launder.description()}
    else -- doesn't have a lavajato
      menu[lang.lavajato.open.title()] = {function(player,choice)
        local name = vRP.prompt(player,lang.lavajato.open.prompt_name({30}),"")
        if string.len(name) >= 2 and string.len(name) <= 30 then
          name = sanitizeString(name, sanitizes.lavajato_name[1], sanitizes.lavajato_name[2])
          local capital = vRP.prompt(player,lang.lavajato.open.prompt_capital({cfg.minimum_capital}),""..cfg.minimum_capital)
          capital = parseInt(capital)
          if capital >= cfg.minimum_capital then
            if vRP.tryPayment(user_id,capital) then
              MySQL.execute("vRP/create_lavajato", {
                user_id = user_id,
                name = name,
                capital = capital,
                time = os.time()
              })

              vRPclient._notify(player,lang.lavajato.open.created())
              vRP.closeMenu(player) -- close the menu to force update lavajato info
            else
              vRPclient._notify(player,lang.money.not_enough())
            end
          else
            vRPclient._notify(player,lang.common.invalid_value())
          end
        else
          vRPclient._notify(player,lang.common.invalid_name())
        end
      end,lang.lavajato.open.description({cfg.minimum_capital})}
    end

    -- lavajato list
    menu[lang.lavajato.directory.title()] = {function(player,choice)
      open_lavajato_directory(player,0)
    end,lang.lavajato.directory.description()}

    -- open menu
    vRP.openMenu(source,menu)
  end
end

local function lavajato_leave()
  vRP.closeMenu(source)
end

local function build_client_lavajato(source) -- build the city hall area/marker/blip
  local user_id = vRP.getUserId(source)
  if user_id then
    for k,v in pairs(cfg.commerce_chambers) do
      local x,y,z = table.unpack(v)

      vRPclient._addBlip(source,x,y,z,cfg.blip[1],cfg.blip[2],lang.lavajato.title())
      vRPclient._addMarker(source,x,y,z-1,0.7,0.7,0.5,0,255,125,125,150)

      vRP.setArea(source,"vRP:lavajato"..k,x,y,z,1,1.5,lavajato_enter,lavajato_leave)
    end
  end
end


AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  -- first spawn, build lavajato
  if first_spawn then
    build_client_lavajato(source)
  end
end)


