local cfg = module("cfg/lavagem")
local htmlEntities = module("lib/htmlEntities")
local lang = vRP.lang

local sanitizes = module("cfg/sanitizes")



local function lavagem_enter(source)
  local source = source

  local user_id = vRP.getUserId(source)
  if user_id then
    -- build lavagem menu
    local menu = {name=lang.lavagem.title(),css={top="75px",header_color="rgba(240,203,88,0.75)"}}
      -- money laundered
      menu[lang.lavagem.launder.title()] = {function(player,choice)
        local launder_left = math.min(vRP.getDinheirosujo(user_id,value)) -- compute launder capacity
        local amount = vRP.prompt(player,lang.lavagem.launder.prompt({launder_left}),""..launder_left)
        amount = parseInt(amount)
        if amount > 0 and amount <= launder_left then
          if vRP.tryDinheirosujo ~= nil then
          vRP.tryDinheirosujo(user_id,amount)
          -- DAR DINHEIRO LIMPO
            vRP.giveMoney(user_id,amount - 0.4*amount)
            vRPclient._notify(player,lang.lavagem.launder.laundered({amount}))
			
          else
            vRPclient._notify(player,lang.lavagem.launder.not_enough())
          end
        else
          vRPclient._notify(player,lang.common.invalid_value())
        end
      end,lang.lavagem.launder.description()}

    -- open menu
    vRP.openMenu(source,menu)
  end
end

local function lavagem_leave(source)
  vRP.closeMenu(source)
end

local function build_client_lavagem(source) -- build the city hall area/marker/blip
  local user_id = vRP.getUserId(source)
  if user_id then
    for k,v in pairs(cfg.commerce_chambers) do
      local x,y,z = table.unpack(v)

      vRPclient._addBlip(source,x,y,z,cfg.blip[1],cfg.blip[2],lang.lavagem.title())
      vRPclient._addMarker(source,x,y,z-1,1.1,1.1,1.7,0,120,125,125,150)

      vRP.setArea(source,"vRP:lavajato"..k,x,y,z,1,1.5,lavagem_enter,lavagem_leave)
    end
  end
end


AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  -- first spawn, build lavagem
  if first_spawn then
    build_client_lavagem(source)
  end
end)


