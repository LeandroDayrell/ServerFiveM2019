
-- gui config file

local cfg = {}

-- additional css loaded to customize the gui display (see gui/design.css to know the available css elements)
-- it is not recommended to modify the vRP core files outside the cfg/ directory, create a new resource instead
-- you can load external images/fonts/etc using the NUI absolute path: nui://my_resource/myfont.ttf
-- example, changing the gui font (suppose a vrp_mod resource containing a custom font)
cfg.css = [[
@font-face {
  font-family: "pcdown";
  src: url(nui://vrp/gui/fonts/pcdown.ttf) format("truetype");
}

@font-face {
  font-family: "bankgothic";
  src: url(nui://vrp/gui/fonts/bankgothic.ttf) format("truetype");
}

body{
  font-family: "Segoe UI";
  font-size: 0.9em;
}
]]

-- list of static menu types (map of name => {.title,.blipid,.blipcolor,.permissions (optional)})
-- static menus are menu with choices defined by vRP.addStaticMenuChoices(name, choices)
cfg.static_menu_types = {
   ["Arsenal Policia PMERJ"] = {
      title = "Arsenal Policia PMERJ", 
      blipcolor = 0,
	  permissions = {
	    "police.weapons"
	  }
	},
   ["Atendimento Medico"] = {
      title = "Atendimento Medico", 
      blipcolor = 0,
	  permissions = {
	    "emergency.heal"
	  }
	},
   ["Bombeito medkit"] = {
      title = "Bombeito medkit", 
      blipcolor = 0,
	  permissions = {
	    "emergency.medkit"
	  }
   }
}

-- list of static menu points
cfg.static_menus = {
  {"Arsenal Policia PMERJ", 461.31414794922,-981.15582275391,30.689588546753},
  {"Atendimento Medico", -447.79333496094,6007.9038085938,31.716388702393},  ----prf
  {"Atendimento Medico", 452.58203125,-973.78430175781,30.689588546753},-----dp
  {"Atendimento Medico", 1150.9288330078,-1529.9295654297,35.373558044434}-----hosp
}

-- VoIP

-- configuration passed to RTCPeerConnection
cfg.voip_peer_configuration = {
  iceServers = {
    {urls = {"stun:stun.l.google.com:19302", "stun:stun1.l.google.com:19302", "stun:stun2.l.google.com:19302"}}
  }
}

return cfg
