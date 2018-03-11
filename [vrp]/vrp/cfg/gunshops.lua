
local cfg = {}

cfg.gunshop_types = {
    ["bombeiro arma"] = {
    _config = {blipid=155,blipcolor=1, permissions = {"samu.loadshop"}},
    ["WEAPON_FireExtinguisher"] = {"Extintor",0,0,""},
    ["WEAPON_Flashlight"] = {"Lanterna",0,0,""},
	["WEAPON_StunGun"] = {"Arma de Choque",0,0,""}
  },
  ["armacivil"] = {
    _config = {blipid=150,blipcolor=67},
    ["WEAPON_SNSPISTOL"] = {"Marksman Pistol",12000,4,""},
	["WEAPON_SWITCHBLADE"] = {"Faca do CS",700,0,""},
	["WEAPON_SMG"] = {"SMG",26000,6,""},
  },
  ["policeloadout"] = {
    _config = {permissions = {"police.loadshop"}},
    ["WEAPON_STUNGUN"] = {"Arma de choque",0,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",0,2,""},
    ["WEAPON_SMOKEGRENADE"] = {"Granada de fumaça",0,2,""},
	["WEAPON_CARBINERIFLE"] = {"Carabineri Rifle",0,4,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Shotgun",0,5,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Cacetete",0,0,""},
	["WEAPON_SPECIALCARBINE"] = {"FAL",0,4,""},
 }
}


cfg.gunshops = {
  {"bombeiro arma",1207.1614990234,-1465.1883544922,34.85954284668},----bombeiro 
  {"armacivil",-1305.9865722656,-394.48992919922,36.695774078369},      
  {"armacivil",-331.624, 6082.46, 31.4548},
  {"policeloadout",455.83148193359,-993.33074951172,30.689588546753},
  {"policeloadout",149.8796081543,-766.97387695313,258.15191650391},
}

return cfg
