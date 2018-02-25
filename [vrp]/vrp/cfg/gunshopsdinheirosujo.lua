
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshopdinheirosujo_types = {
  ["Armas ilegais"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_BOTTLE"] = {"Bottle",1000,0,""},
    ["WEAPON_BAT"] = {"Bat",1500,0,""},
	["WEAPON_ASSAULTRIFLE"] = {"Ak-47",89000,50,""},
	["WEAPON_SNSPISTOL"] = {"Pistola",17000,30,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",1500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",4000,0,""}
  },

  ["vinewood1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,15,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",2500,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",2500,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",5000,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",5000,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",5000,15,""},
    ["WEAPON_APPISTOL"] = {"Ap Pistol",7500,15,""},
    ["WEAPON_DAGGER"] = {"Dagger",2000,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",2500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",3000,0,""}
  },

  ["vespuccibeach1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_MICROSMG"] = {"Mini SMG",50000,25,""},
    ["WEAPON_SMG"] = {"SMG",5000,25,""},
    ["WEAPON_ASSAULTSMG"] = {"Assault SMG",5500,25,""},
    ["WEAPON_COMBATPDW"] = {"Combat PDW",7500,25,""},
    ["WEAPON_MACHINEPISTOL"] = {"Machine Pistol",7500,25,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",3000,0,""},
    ["WEAPON_CROWBAR"] = {"Crowwbar",3000,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",3500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",4000,0,""},
    ["WEAPON_MACHETE"] = {"Machete",4500,0,""}
  },

  ["paletobay1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,15,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,15,""},
    ["WEAPON_COMPACTRIFLE"] = {"Mini SMG",200000,50,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Assault Rifle",200000,50,""},
    ["WEAPON_CARBINERIFLE"] = {"Carabineri Rifle",200000,50,""},
    ["WEAPON_GRENADE"] = {"Grenade",500000,70,""},
    ["WEAPON_MOLOTOV"] = {"Molotv",150000,45,""},
    ["WEAPON_FLARE"] = {"Flare",200000,50,""}
  },

  ["tataviammountains1"] = {
    _config = {blipid=154,blipcolor=2},
    ["WEAPON_GUSENBERG"] = {"Gusenberg MG",200000,50,""},
    ["WEAPON_MG"] = {"MG",250000,50,""},
    ["WEAPON_COMBATMG"] = {"Combat MG",500000,70,""}
  },

  ["chumash1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,15,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,15,""},
    ["WEAPON_MARKSMANRIFLE"] = {"Marksman Rifle",150000,45,""},
    ["WEAPON_SNIPERRIFLE"] = {"Sniper Rifle",200000,50,""},
    ["WEAPON_HEAVYSNIPER"] = {"Heavy Rifle",500000,50,""}
  },

  ["eastlossantos1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_BULLPUPRIFLE"] = {"Bullpup Rifle",200000,50,""},
    ["WEAPON_ADVANCEDRIFLE"] = {"Carabine",200000,50,""},
    ["WEAPON_SPECIALCARBINE"] = {"Special Carabine",200000,50,""},
    ["WEAPON_GRENADE"] = {"Grenade",500000,70,""},
    ["WEAPON_MOLOTOV"] = {"Molotv",150000,45,""},
    ["WEAPON_FLARE"] = {"Flare",200000,50,""}
  },

  ["midlossantosrange"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",350000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",500000,70,""},
    ["WEAPON_BULLPUPSHOTGUN"] = {"BullUp Shotgun",650000,72,""},
    ["WEAPON_HEAVYSHOTGUN"] = {"Heavy Shotgun",750000,75,""},
    ["WEAPON_ASSAULTSHOTGUN"] = {"Assault Shotgun",1000000,80,""}
  },

  ["greatchaparral1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_GRENADELAUNCHER_SMOKE"] = {"Grenade Launcher",500000,100,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",1000000,0,""},
    ["WEAPON_FIREWORK"] = {"Firework",2000000,0,""},
    ["WEAPON_SNOWBALL"] = {"SnowBall",3000000,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",50000,0,""},
    ["WEAPON_STUNGUN"] = {"Stungun",100000,0,""},
    ["WEAPON_MUSKET"] = {"Musket",150000,0,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",500000,0,""}
  },

  ["cypressflatsrange1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,15,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,15,""},
    ["WEAPON_GRENADE"] = {"Grenade",500000,70,""},
    ["WEAPON_SMOKEGRENADE"] = {"Smoke Grenade",50000,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",50000,0,""}
  }
}

-- list of gunshops positions

cfg.gunshopsdinheirosujo = {
  {"Armas ilegais", 1565.3829345703,-2166.3781738281,77.535255432129},
  {"Armas ilegais", -782.12982177734,585.32623291016,126.85294342041},
  {"Armas ilegais", 797.53784179688,-221.78076171875,66.114440917969},
  {"Armas ilegais", 1440.4404296875,-825.66723632813,108.35398101807},
  {"Armas ilegais", 461.64810180664,-1748.0297851563,28.723892211914},
  --{"vinewood1", 252.696, -48.2487, 69.941},
  --{"eastlossantos1", 844.299, -1033.26, 28.1949},
}

return cfg
