
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshopdinheirosujo_types = {
  ["Armas ilegais"] = {
    _config = {blipid=154,blipcolor=150, permissions = {"traficante.defaccao"}},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",150,0,""},
	["WEAPON_ASSAULTRIFLE"] = {"Ak-47",20000,5,""},
	["WEAPON_PISTOL"] = {"Pistola",7000,3,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""}
  },
}

-- list of gunshops positions

cfg.gunshopsdinheirosujo = {
  {"Armas ilegais", -856.16662597656,585.86663818359,103.08406829834},  -- FAVELA RICA TCP
  {"Armas ilegais", 1399.6605224609,-460.32315063477,121.33157348633},  -- FAVELA DA BR ADA
  {"Armas ilegais", 1678.6430664063,-1890.5793457031,110.31903076172},  -- FAVELA PETROLEO CV
  {"Armas ilegais", 97.632736206055,-1905.0054931641,21.0804271698},  -- FAVELA SANANDRAS TCA
  --{"vinewood1", 252.696, -48.2487, 69.941},
  --{"eastlossantos1", 844.299, -1033.26, 28.1949},
}

return cfg
