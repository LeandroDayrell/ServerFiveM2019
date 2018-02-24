
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.7 -- sell for 75% of the original price

cfg.garage_types = {
  ["police"] = {
    _config = {vtype="car",blipid=56,blipcolor=49,permissions={"police.vehicle"}},
    ["polarteon"] = {"BOPE - Arteon",0, "police"},
	["riot"] = {"BOPE - Caveirao",0, "police"},
	["police3"] = {"BOPE - Dodge",0, "police"},
	["sef_pfinder"] = {"BOPE - Nissan Pathfinder",0, "police"},
    ["fbi2"] = {"BOPE - Suburban",0, "police"},
	["ghispo2"] = {"PMERJ - Maseratti",0, "police"},
	["police5"] = {"Duster PMERJ",0, ""},
	["cprotection"] = {"Landhover PMERJ",0, ""},
	["rmodpolice"] = {"PRF Nissan",0, "police"},----
	["sheriffevo"] = {"Evo PRF",0, "police"},---
	["polchiron"] = {"Chiron PRF",0, "police"},----
	["pbus"] = {"PMERJ BUS",0, "police"}
  },

  ["hospitalele"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"emergency.vehicle"}},
	["samumav"] = {"Helicoptero SAMU",50, "emergency"}
  },
  
   ["hospitalcar"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"emergency.vehicle"}},
	["ambulance"] = {"Ambulancia Bombeiro",0, ""},
	["pranger"] = {"Resgate",0, ""}
  },

  ["uber"] = {
    _config = {vtype="car",blipid=50,blipcolor=81,permissions={"uber.vehicle"}},
	["civic"] = {"Honda Civic 2001", 50, ""}
  },
  
  ["advogado"] = {
    _config = {vtype="car",blipid=225,blipcolor=59,permissions={"advogado.vehicle"}},
    ["hondacivictr"] = {"Honda Civic", 50, ""},
  },
  
  ["moto_boy"] = {
    _config = {vtype="bike",blipid=226,blipcolor=31,permissions={"moto_boy.vehicle"}},
    ["enduro"] = {"HONDA CG TITAN 2009",50, ""}
  },
  
  ["barcos"] = {
    _config = {vtype="boat",blipid=427,blipcolor=4},
     ["dinghy"] = {"Dinghy", 500000, "Un zodiac."},
     ["dinghy2"] = {"Dinghy II", 500000, "Un zodiac."},
     ["dinghy3"] = {"Dinghy III", 500000, "Un zodiac."},
     ["dinghy4"] = {"Dinghy IV", 500000, "Un zodiac."},
     ["marquis"] = {"Marquis", 2500000, "Un voilier."},
     ["seashark"] = {"Seashark", 90000, "Un jet-ski."},
     ["seashark2"] = {"Seashark II", 90000, "Un jet-ski."},
     ["seashark3"] = {"Seashark III", 90000, "Un jet-ski."},
     ["speeder"] = {"Speeder", 6000000, "Un bateau rapide."},
     ["speeder2"] = {"Speeder II", 6000000, "Un bateau rapide."},
     ["squalo"] = {"Squalo", 6000000, "Un bateau rapide."},
     ["jetmax"] = {"JetMax", 6000000, "Un bateau rapide."},
     ["toro"] = {"Toro", 6000000, "Un bateau rapide."},
     ["toro2"] = {"Toro II", 6000000, "Un bateau rapide."},
     ["tropic"] = {"Tropic", 6000000, "Un bateau rapide."},
     ["tropic2"] = {"Tropic II", 6000000, "Un bateau rapide."},
     ["predator"] = {"Predator", 6000000, "Un bateau rapide."},
     ["suntrap"] = {"Suntrap", 2500000, "Bateau de plaisance."}
   },
   
  ["Helicopters"] = {
    _config = {vtype="fly",blipid=43,blipcolor=18},
    ["maverick"] = {"Maverick", 35000000, "Entry Level Helicopter"},
    ["swift2"] = {"Swift II", 55000000, "Mid-Class Helicopter"},
    ["supervolito"] = {"Super Volito", 85000000, "Large Mid-Class Helicopter"},
    ["supervolito2"] = {"Super Volito II", 100000000, "Large Mid-Class Helicopter"},
    ["volatus"] = {"Volatus", 150000000, "High-End Business Class Helicopter"},
	["buzzard2"] = {"Buzzard",10000000, ""},
	["cargobob2"] = {"Cargobob",30000000, ""},
	["frogger"] = {"Frogger",12000000, ""},
	["skylift"] = {"Skylift",40000000, ""}
  },
    ["Barco pescador"] = {
   _config = {vtype="car",blipid=410,blipcolor=30,permissions={"pescador.barco"}},
    ["Tug"] = {"Tug", 50,"Barco pra pesca!"},
  },
    ["lixeiro"] = {
    _config = {vtype="car",blipid=318,blipcolor=31,permissions={"lixeiro.vehicle"}},
    ["Trash"] = {"Trash", 50,"carro do lixeiro!"},
  },
    ["PDHeli"] = {
    _config = {vtype="car", permission = "police.vehicle"},
    ["swift2"] = {"Swift II", 0, "Swift II"},
    ["swift"] = {"swift", 0, "swift"}
  },
  
  ["Transport"] = {
    _config = {vtype="car",blipid=318,blipcolor=4},
    ["packer"] = {"Packer", 42000, "18-Wheeler Cabin : Holds 50lbs"},
    ["benson"] = {"Benson", 25000, "Large Box Truck : Holds 50lbs"},
    ["bison"] = {"Bison", 12000, "PickUp Truck : Holds 120lbs"},
    ["burrito3"] = {"Declasse Burriot", 18000, "Van : Holds 100lbs"},
    ["pounder"] = {"MTL Pounder", 28000, "Large Truck w/ Cabin and Trailer : Holds 150lbs"}
  },
  
  ["Trailers"] = {
    _config = {vtype="trailer",blipid=318,blipcolor=17},
    ["trailersmall"] = {"Petit", 30000, "Small Trailer : Holds 100lbs"},
    ["trailers"] = {"Basic", 300000, "18-Wheeler Trailer : Holds 350lbs"},
    ["tanker"] = {"Tanker", 50000, "18-Wheeler Tanker Trailer : Holds 500lbs"}
  },
  
  ["repair"] = {
    _config = {vtype="car",blipid=50,blipcolor=31,permissions={"repair.vehicle"}},
    ["towtruck2"] = {"towtruck2",50, "towtruck2"}
  },
  
  ["Motorista_bancario"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"Motorista_bancario.vehicle"}},
    ["stockade"] = {"stockade",50, "stockade"}
  }, 
    ["correio"] = {
    _config = {vtype="car",blipid=513,blipcolor=46,permissions={"carteiro.vehicle"}},
    ["Burrito3"] = {"carro do carteiro", 50,"carro do carteiro"}
  },
    ["limpador de piscina"] = {
    _config = {vtype="car",blipid=225,blipcolor=30,permissions={"limpador_de_piscina.vehicle"}},
    ["UtilliTruck3"] = {"carro do limpador", 50,"carro do limpador"}
  },
  
  ["Caminhões"] = {
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["benson"] = {"Benson",200000, ""},
    ["rumpo"] = {"Rumpo",60000, ""},
    ["pounder"] = {"Pounder",250000, ""},
    ["mule"] = {"Mule",150000, ""},
    ["boxville2"] = {"Boxville",100000, ""},
    ["gburrito2"] = {"Gang burrito",80000, ""}
  }, 
  
  ["helicópteros da polícia"] = {
    _config = {vtype="helicopters",permissions={"police.pc"}},
    ["polmav"] = {"Policia",0, ""},
	["valkyrie2"] = {"Tem que pedir permissao ao seu superior para usa-lo",0,""},
	["frogger2"] = {"Policia3",0, ""}
  }, 
   
  ["Jatos de loja"] = {
    _config = {vtype="car",blipid=16,blipcolor=49},
	["vestra"] = {"Vestra",10000000, ""},
	["shamal"] = {"Shamal",20000000, ""},
	["nimbus"] = {"Nimbus",40000000, ""},
	["luxor"] = {"Luxor",30000000, ""}
  },

  ["Aeronaves turboélice Loja"] = {
    _config = {vtype="car",blipid=251,blipcolor=49},
    ["cuban800"] = {"Cuban800",7000000, ""},
	["mammatus"] = {"Mammatus",9000000, ""},
	["mallard"] = {"Mallard",10000000, ""},
	["velum2"] = {"Velum",13000000, ""},
	["duster"] = {"Duster",2500000, ""},
	["dodo"] = {"Dodo",4000000, ""}
  },
  ["onibus"] = {
    _config = {vtype="car",blipid=513,blipcolor=38,permissions={"bus.vehicle"}},
    ["Bus"] = {"Onibus",50, ""}
  } 
}
-- {garage_type,x,y,z}
cfg.garages = { 
  --{"onibus",-325.83905029297,-1008.9650878906,30.38508605957},
  --{"limpador de piscina",-325.11251831054,-952.79296875,31.080625534058},---------------------------limpador de piscina
  --{"correio",-321.90997314454,-942.32623291016,31.080612182618},----------------------------correio
  --{"Barco pescador",12.583372116089,-2802.0444335938,2.5259544849396},
  --{"lixeiro",-318.14889526367,-931.66876220703,31.080619812012},
  --{"advogado",-307.35418701172,-947.36322021484,31.08060836792},
  --{"police",-479.62710571289,6022.0771484375,31.340547561646},---prf 
  --{"police",448.804, -1020.32, 28.4669},
  --{"police",-329.00738525391,-979.23400878906,31.080610275269},
  --{"police",378.612274169922,-1629.18676757813,28.5226573944092},  -- jobs garage 
  --{"hospitalcar",378.25009155273,-601.40863037109,28.780223846436}, 
  ---{"hospitalcar",-312.04141235352,-961.15649414063,31.080619812012},
  --{"hospitalele",352.54067993164,-587.94476318359,74.165626525879},
  ---{"uber",-308.50231933594,-986.4521484375,31.080619812012}, -- jobs garage
  --{"moto_boy",-298.0983581543,-991.42559814453,31.080617904663},   -- jobs garage
  --{"PDHeli",481.621856689453,-982.223693847656,41.0080757141113},
  --{"Helicopters",1750, 3260, 41.37},
  --{"Helicopters",-1233, -2269, 13.9},
  --{"Helicopters",-745, -1468, 5},
  --{"barcos",-849.5, -1368.64, 1.6},
  --{"barcos",1538, 3902, 30.35},
  --{"barcos", -1631.29614257813,-1159.62170410156,1.46207177639008},
  --{"Transport",-962.553039550781,-2965.82470703125,13.9450702667236},
  --{"Trailers",-978.674682617188,-2994.29028320313,13.945068359375},
  --{"repair",-318.63046264648,-983.11907958984,31.080606460571},   -- jobs garage
  --{"Motorista_bancario",-339.52862548828,-975.17901611328,31.080625534058},   -- jobs garage
  --{"helicópteros da polícia",-474.60412597656,5989.2470703125,31.33670425415},----prf  
  --{"helicópteros da polícia",449.15,-981.23,43.69},
  --{"helicópteros da polícia",-1178.4853515625,-2845.80493164063,13.9457626342773},
  --{"Caminhões",182.601486206055,4414.41650390625,74.3924255371094},
  --{"Caminhões",-384.627105712891,1238.93811035156,326.018218994141},
  --{"Caminhões",2700.82080078125,5136.41650390625,44.4120025634766},
  --{"Caminhões",-882.533325195313,-2730.81713867188,13.8284845352173},
  --{"Jatos de loja",-1144.0738525391,-2944.1264648438,13.944903373718},
  --{"Aeronaves turboélice Loja",-1169.9676513672,-2931.8337402344,13.944881439209}

}

return cfg
