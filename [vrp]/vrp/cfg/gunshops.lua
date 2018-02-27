
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
  ["AmmuNation"] = {
    _config = {blipid=150,blipcolor=1},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",9600,0,""},
	["WEAPON_SWITCHBLADE"] = {"Faca do CS",1500,0,""} 	
  },
  ["arma chefe"] = {
    _config = {blipid=159,blipcolor=1, permissions = {"arma_do_chefe.arma"}},
	["WEAPON_SWITCHBLADE"] = {"Faca do CS",0,0,""},
	["WEAPON_ASSAULTRIFLE"] = {"Ak-47",0,0,""},
	["WEAPON_ASSAULTSHOTGUN"] = {"Assault Shotgun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Lanterna",0,0,""},
	["WEAPON_COMPACTRIFLE"] = {"Mini SMG",0,0,""},
	["WEAPON_PARACHUTE"] = {"Paraquedas",0,0,""},
	["WEAPON_REVOLVER"] = {"Tres oitao",0,0,""},		
	["WEAPON_SMOKEGRENADE"] = {"granada de fumaca",0,0,""}
  },
  ["agiota"] = {
    _config = {blipid=159,blipcolor=1, permissions = {"agiota.arma"}},
	["WEAPON_REVOLVER"] = {"Tres oitao",0,0,""},
	["WEAPON_SWITCHBLADE"] = {"Faca do CS",0,0,""},
	["WEAPON_ASSAULTRIFLE"] = {"Ak-47",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Lanterna",0,0,""},
	["WEAPON_PARACHUTE"] = {"Paraquedas",0,0,""},
	["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",0,0,""},
    ["WEAPON_ASSAULTSHOTGUN"] = {"Assault Shotgun",0,0,""},
	["WEAPON_BULLPUPRIFLE"] = {"Bullpup Rifle",0,0,""},
    ["WEAPON_ADVANCEDRIFLE"] = {"Carabine",0,0,""},
    ["WEAPON_SPECIALCARBINE"] = {"Special Carabine",0,0,""},	
	["WEAPON_SMOKEGRENADE"] = {"granada de fumaca",0,0,""}
  },
  ["arma_fogueteiro"] = { 
    _config = {blipid=150,blipcolor=1, permissions = {"fogueteiro.arma"}},
    ["WEAPON_FIREWORK"] = {"FIREWORK",0,0,""},
	["WEAPON_SWITCHBLADE"] = {"Faca do CS",0,0,""},
	["WEAPON_PARACHUTE"] = {"Paraquedas",0,0,""},
	["WEAPON_SNSPISTOL"] = {"Pistol",0,0,""}
  },
    ["bombeiro arma"] = {
    _config = {blipid=155,blipcolor=1, permissions = {"samu.loadshop"}},
    ["WEAPON_FireExtinguisher"] = {"Extintor",0,0,""},
    ["WEAPON_Flashlight"] = {"Lanterna",0,0,""},
	["WEAPON_StunGun"] = {"Arma de Choque",0,0,""}
  },
  ["paletobay1"] = {
    _config = {blipid=150,blipcolor=2},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",9600,0,""},
	["WEAPON_SWITCHBLADE"] = {"Faca do CS",0,0,""}
  },
  ["chumash1"] = {
    _config = {blipid=v,blipcolor=1},
	["WEAPON_SWITCHBLADE"] = {"Faca do CS",0,0,""}, 
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",9600,0,""}
  },
  ["policeloadout"] = {
    _config = {blipid=150,blipcolor=69, permissions = {"police.loadshop"}},
    ["WEAPON_STUNGUN"] = {"Arma de choque",0,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistola",0,0,""},
    ["WEAPON_SMOKEGRENADE"] = {"Granada de fumaça",0,0,""},
	--["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",0,0,""},
    ["WEAPON_ASSAULTSHOTGUN"] = {"Assault Shotgun",0,0,""},
	--["WEAPON_BULLPUPRIFLE"] = {"Bullpup Rifle",0,0,""},
    --["WEAPON_ADVANCEDRIFLE"] = {"Carabine",0,0,""},
	--["WEAPON_MICROSMG"] = {"Mini SMG",0,0,""},
    ["WEAPON_SMG"] = {"SMG",0,0,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",0,0,""},
    --["WEAPON_ASSAULTSMG"] = {"Assault SMG",0,0,""},
    --["WEAPON_NIGHTSTICK"] = {"Cacetete",0,0,""},
 }
}

-- list of gunshops positions

cfg.gunshops = {
  {"bombeiro arma",1207.1614990234,-1465.1883544922,34.85954284668},----bombeiro 
  --{"AmmuNation",-664.147, -935.119, 21.8292},
  --{"agiota",-31.488765716553,-1114.2690429688,26.422355651855},
  --{"arma chefe",1441.1966552734,-811.46807861328,102.47248840332},---cv
  --{"arma chefe",419.76107788086,-1809.5485839844,28.498807907104},---tcp  
  --{"arma chefe",-791.0869140625,601.23199462891,127.36179351807},-----ada 
  --{"arma chefe",758.98504638672,-205.8599395752,66.114479064941},-----tca
  --{"AmmuNation",-1320.983, -389.260, 36.483},      
  --{"Police Armory",452.3533,-980.0969,30.6896},  
  --{"policeloadout",-451.15170288086,6011.662109375,31.716388702393},-----  -451.15170288086,6011.662109375,31.716388702393
  --{"policeloadout",-1116.2705078125,-844.26898193359,13.360802650452},
  {"paletobay1",-331.624, 6082.46, 31.4548},
  --{"chumash1",-3172.60375976563,1085.74816894531,20.8387603759766},
  {"policeloadout",455.83148193359,-993.33074951172,30.689588546753},
  --{"arma_fogueteiro",-782.15661621094,585.10882568359,126.84949493408},   
  --{"arma_fogueteiro",1439.5982666016,-808.21301269531,100.98947143555},-----cv
  --{"arma_fogueteiro",414.90408325195,-1813.8205566406,28.578731536865},----P.c.p
  --{"arma_fogueteiro",763.70385742188,-260.81420898438,66.105735778809}-------tca
}

return cfg
