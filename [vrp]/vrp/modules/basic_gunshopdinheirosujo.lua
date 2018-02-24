-- a basic gunshop implementation

local cfg = module("cfg/gunshopsdinheirosujo")
local lang = vRP.lang

local gunshopsdinheirosujo = cfg.gunshopsdinheirosujo
local gunshopdinheirosujo_types = cfg.gunshopdinheirosujo_types

local gunshopdinheirosujo_menus = {}

-- build gunshop menus
for gtype,weapons in pairs(gunshopdinheirosujo_types) do
  local gunshopdinheirosujo_menu = {
    name=lang.gunshopdinheirosujo.title({gtype}),
    css={top = "75px", header_color="rgba(255,0,0,0.75)"}
  }

  -- build gunshop items
  local kitems = {}

  -- item choice
  local gunshopdinheirosujo_choice = function(player,choice)
    local weapon = kitems[choice][1]
    local price = kitems[choice][2]
    local price_ammo = kitems[choice][3]

    if weapon then
      -- get player weapons to not rebuy the body
      local weapons = vRPclient.getWeapons(player)
      -- prompt amount
      local amount = vRP.prompt(player,lang.gunshopdinheirosujo.prompt_ammo({choice}),"")
      local amount = parseInt(amount)
      if amount >= 0 then
        local user_id = vRP.getUserId(player)
        local total = math.ceil(parseFloat(price_ammo)*parseFloat(amount))

        if weapons[string.upper(weapon)] == nil then -- add body price if not already owned
          total = total+price
        end

        -- payment
        if user_id and vRP.tryDinheirosujo(user_id,total) then
          vRPclient._giveWeapons(player,{
            [weapon] = {ammo=amount}
          })

          vRPclient._notify(player,lang.money.paid({total}))
        else
          vRPclient._notify(player,lang.money.not_enough())
        end
      else
        vRPclient._notify(player,lang.common.invalid_value())
      end
    end
  end

  -- add item options
  for k,v in pairs(weapons) do
    if k ~= "_config" then -- ignore config property
      kitems[v[1]] = {k,math.max(v[2],0),math.max(v[3],0)} -- idname/price/price_ammo
      gunshopdinheirosujo_menu[v[1]] = {gunshopdinheirosujo_choice,lang.gunshopdinheirosujo.info({v[2],v[3],v[4]})} -- add description
    end
  end

  gunshopdinheirosujo_menus[gtype] = gunshopdinheirosujo_menu
end

local function build_client_gunshopsdinheirosujo(source)
  local user_id = vRP.getUserId(source)
  if user_id then
    for k,v in pairs(gunshopsdinheirosujo) do
      local gtype,x,y,z = table.unpack(v)
      local group = gunshopdinheirosujo_types[gtype]
      local menu = gunshopdinheirosujo_menus[gtype]

      if group and menu then
        local gcfg = group._config

        local function gunshopdinheirosujo_enter()
          local user_id = vRP.getUserId(source)
          if user_id and vRP.hasPermissions(user_id,gcfg.permissions or {}) then
            vRP.openMenu(source,menu) 
          end
        end

        local function gunshopdinheirosujo_leave()
          vRP.closeMenu(source)
        end

        vRPclient._addBlip(source,x,y,z,gcfg.blipid,gcfg.blipcolor,lang.gunshopdinheirosujo.title({gtype}))
        vRPclient._addMarker(source,x,y,z-1,1.1,1.1,1.7,0,255,125,125,150)

        vRP.setArea(source,"vRP:gunshopdinheirosujo"..k,x,y,z,1,1.5,gunshopdinheirosujo_enter,gunshopdinheirosujo_leave)
      end
    end
  end
end

AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  if first_spawn then
    build_client_gunshopsdinheirosujo(source)
  end
end)
