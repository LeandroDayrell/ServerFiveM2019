
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: gtype, vtype, blipid, blipcolor, ghome, permissions (optional, only users with the permission will have access to the shop)
-- vtype: identifies the "type" of vehicle for the personal garages and vehicles (you can create new ones)
-- gtype: there are 5 gtypes> personal, showroom, shop, store and rental (you cant create new ones, one garage can have many gtypes)
   -- personal: allow you to get any personal vehicle of the same vtype of the garage
   -- showroom: allows you to see the vehicle model before purchasing it
   -- shop: allows you to modify your vehicle
   -- store: allows you to purchase and sell vehicles
   -- rental: allows you to rent vehicles for that session for a part of the price
-- ghome: links the garage with an address, only owners of that address will have see the garage
-- gpay: bank or wallet
-- Car/Mod: [id/model] = {"Display Name", price/amount, "", (optional) item}, -- when charging items, price becomes amount

cfg.lang = "en" -- lenguage file

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.75 -- sell for 75% of the original price

cfg.price = {
  repair = 500, -- value to repair the vehicle
  colour = 100, -- value will be charged 3 times for RGB
  extra = 100, -- value will be charged 3 times for RGB
  neon = 100 -- value will be charged 3 times for RGB
}

-- declare any item used on purchase that doesnt exist yet (name,description,choices,weight}
cfg.items = {
  ["issi2key"] = {"Issi 2 Key","Buys an Issi",nil,0.5} -- example
}

-- configure garage types
cfg.adv_garages = {
  ["police"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",permissions={"police.vehicle"}},
	["riot"] = {"BOPE - Caveirao",0, "police"},
	["pbus"] = {"PMERJ BUS",0, "police"},
	["logan"] = {"Logan POLICIA jazz",0, "police"},
	["s10p"] = {"s10 POLICIA jazz",0, "police"},
  },
  
  ["bope"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",permissions={"bope.vehicle"}},
	["police2"] = {"Pickup BOPE",0, "police"},
	["RIOT"] = {"Caveirão BOPE",0, "police"},
  },
  
   ["hospitalele"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=360,blipcolor=3,permissions={"emergency.vehicle"}},
	["polmav"] = {"Helicoptero SAMU",0, ""},
	["RIOT"] = {"Teste 2",0, ""},
  },
  
   ["hospitalcar"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=50,blipcolor=3,permissions={"emergency.vehicle"}},
	--["ambulance"] = {"Ambulancia Bombeiro",0, ""},
	["pranger"] = {"Resgate",0, ""},
	["ems_gs1200"] = {"Moto Samu",0, ""},
	["sprinter"] = {"Sprinter Samu",0, ""},
  },

  ["uber"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=50,blipcolor=81,permissions={"uber.vehicle"}},
	["astra"] = {"Astra", 50, ""},
  },
  
  ["advogado"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",permissions={"advogado.vehicle"}},
    ["astra"] = {"Astra", 50, ""},
  },
  
  ["moto_boy"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",permissions={"moto_boy.vehicle"}},
    ["enduro"] = {"HONDA CG TITAN 2009",50, ""},
  },
  
  ["barcos"] = {
    _config = {gpay="wallet",gtype={"personal","store","rental"},vtype="car",blipid=427,blipcolor=4},
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
     ["suntrap"] = {"Suntrap", 2500000, "Bateau de plaisance."},
   },
   
  ["Helicopters"] = {
   _config = {gpay="wallet",gtype={"personal","showroom","store","rental"},vtype="car",blipid=43,blipcolor=18},
    ["maverick"] = {"Maverick", 35000000, "Entry Level Helicopter"},
    ["swift2"] = {"Swift II", 55000000, "Mid-Class Helicopter"},
    ["supervolito"] = {"Super Volito", 85000000, "Large Mid-Class Helicopter"},
    ["supervolito2"] = {"Super Volito II", 100000000, "Large Mid-Class Helicopter"},
    ["volatus"] = {"Volatus", 150000000, "High-End Business Class Helicopter"},
	["buzzard2"] = {"Buzzard",10000000, ""},
	["cargobob2"] = {"Cargobob",30000000, ""},
	["frogger"] = {"Frogger",12000000, ""},
	["skylift"] = {"Skylift",40000000, ""},
  },
  
    ["Barco pescador"] = {
    _config = {gpay="wallet",gtype={"rental","Personal"},vtype="car",blipid=410,blipcolor=30,permissions={"pescador.barco"}},
    ["Tug"] = {"Tug", 50,"Barco pra pesca!"},
  },
  
    ["lixeiro"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=318,blipcolor=31,permissions={"lixeiro.vehicle"}},
    ["Trash"] = {"Trash", 50,"carro do lixeiro!"},
  },
  
    ["PDHeli"] = {
   _config = {gpay="wallet",gtype={"rental"},vtype="car", permission = {"police.vehicle"}},
    ["swift2"] = {"Swift II", 0, "Swift II"},
    ["swift"] = {"swift", 0, "swift"},
  },
  
   ["Transport"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=318,blipcolor=4},
    ["packer"] = {"Packer", 42000, "18-Wheeler Cabin : Holds 50lbs"},
    ["benson"] = {"Benson", 25000, "Large Box Truck : Holds 50lbs"},
    ["bison"] = {"Bison", 12000, "PickUp Truck : Holds 120lbs"},
    ["burrito3"] = {"Declasse Burriot", 18000, "Van : Holds 100lbs"},
    ["pounder"] = {"MTL Pounder", 28000, "Large Truck w/ Cabin and Trailer : Holds 150lbs"},
  },
  
  ["Trailers"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=318,blipcolor=17},
    ["trailersmall"] = {"Petit", 30000, "Small Trailer : Holds 100lbs"},
    ["trailers"] = {"Basic", 300000, "18-Wheeler Trailer : Holds 350lbs"},
    ["tanker"] = {"Tanker", 50000, "18-Wheeler Tanker Trailer : Holds 500lbs"},
  },
  
  ["repair"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",permissions={"repair.vehicle"}},
    ["towtruck2"] = {"towtruck2",50, "towtruck2"},
  },
  
  ["Motorista_bancario"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=67,blipcolor=4,permissions={"Motorista_bancario.vehicle"}},
    ["stockade"] = {"stockade",50, "stockade"},
  }, 
  
    ["correio"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",permissions={"carteiro.vehicle"}},
    ["Burrito3"] = {"carro do carteiro", 50,"carro do carteiro"},
  },
  
    ["limpador de piscina"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",permissions={"limpador_de_piscina.vehicle"}},
    ["UtilliTruck3"] = {"carro do limpador", 50,"carro do limpador"},
  },
  
  ["Caminhões"] = {
    _config = {gpay="wallet",gtype={"personal","showroom","store","rental"},vtype="car",blipid=50,blipcolor=4},
    ["benson"] = {"Benson",200000, ""},
    ["rumpo"] = {"Rumpo",60000, ""},
    ["pounder"] = {"Pounder",250000, ""},
    ["mule"] = {"Mule",150000, ""},
    ["boxville2"] = {"Boxville",100000, ""},
    ["gburrito2"] = {"Gang burrito",80000, ""},
  }, 
  
  ["helicópteros da polícia"] = {
   _config = {gpay="wallet",gtype={"rental"},vtype="helicopters",permissions={"police.pc"}},
    ["polmav"] = {"Policia",0, ""},
	["valkyrie2"] = {"Tem que pedir permissao ao seu superior para usa-lo",0,""},
	["frogger2"] = {"Policia3",0, ""},
  }, 
   
   ["helicópteros da Bope"] = {
   _config = {gpay="wallet",gtype={"rental"},vtype="helicopters",permissions={"police.pc"}},
    ["helibope"] = {"Helicoptero",0, ""},
  }, 
   
   
   
   
  ["Jatos de loja"] = {
   _config = {gpay="wallet",gtype={"personal","showroom","store","rental"},vtype="car",blipid=16,blipcolor=49},
	["vestra"] = {"Vestra",10000000, ""},
	["shamal"] = {"Shamal",20000000, ""},
	["nimbus"] = {"Nimbus",40000000, ""},
	["luxor"] = {"Luxor",30000000, ""},
  },

  ["Aeronaves turboélice Loja"] = {
    _config = {gpay="wallet",gtype={"personal","showroom","store","rental"},vtype="car",blipid=251,blipcolor=49},
    ["cuban800"] = {"Cuban800",7000000, ""},
	["mammatus"] = {"Mammatus",9000000, ""},
	["mallard"] = {"Mallard",10000000, ""},
	["velum2"] = {"Velum",13000000, ""},
	["duster"] = {"Duster",2500000, ""},
	["dodo"] = {"Dodo",4000000, ""},
  },
  
  ["onibus"] = {
    _config = {gpay="wallet",gtype={"rental"},vtype="car",blipid=513,blipcolor=38,permissions={"bus.vehicle"}},
    ["Bus"] = {"Onibus",50, ""},
  },
  
  ["loja carro"]  = {
    _config = {gpay="bank",gtype={"showroom","store","rental","personal"},vtype="car",blipid=225,blipcolor=81},
	["vwstance"] = {"vwstance",140000, ""},
	["208"] = {"Peugeot 208",47900, ""},
	["golg7"] = {"Gol G7",45900, ""},
	["civic"] = {"Honda Civic",43000, ""},
	["jetta"] = {"Jetta",58000, ""},
	["saveiro3"] = {"Saveiro",40000, ""},
	["up"] = {"up",38000, ""},
	["celta"] = {"CELTA",19900, ""},
	["agile"] = {"Agile",28000, ""}, --
	
	["comodoro"] = {"Comodoro Chevrolet",33000, ""}, --
	["c10"] = {"C10 Chevrolet",40000, ""}, --
	["astra"] = {"Astra Chevrolet",29800, ""}, --
	["cruze"] = {"Cruze Chevrolet",50000, ""}, --
	["golf1"] = {"Golf 1994",22000, ""}, --
	["golf2"] = {"Golf 2002",20000, ""}, --
	
	
	["paratisurf"] = {"Parati Surf",15000, ""}, --
	["palio"] = {"Palio",9000, ""}, --
	["polo"] = {"Polo Volks",20000, ""}, --
	["ranger"] = {"Ranger",99990, ""}, --
	["omega"] = {"Chevrolet Omega 1997",32500, ""}, --
    ["opalas"] = {"Chevrolet Opala SS 1977",65000, ""}, --
	["maveco"] = {"Ford Maverick 1976",51000, ""}, --
	["hb20s"] = {"Hyundai HB20s 2016",54450, ""}, --
	["amarok"] = {"VW AMAROK 2016",85890, ""}, --
	["gol2"] = {"VW Gol 1996",15900, ""}, --
  },
  
    ["Garagem"]  = {
	_config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=50,blipcolor=38},
	
	-- CARROS
	
	["vwstance"] = {"vwstance",70000, ""},
	["208"] = {"Peugeot 208",40000, ""},
	["golg7"] = {"Gol G7",31000, ""},
	["civic2"] = {"Civic 2010",36000, ""},
	["jetta"] = {"Jetta",80000, ""},
	["saveiro"] = {"Saveiro",40000, ""},
	["up"] = {"up",38000, ""},
	["celta"] = {"CELTA",21000, ""},
	["agile"] = {"Agile",33000, ""}, --	
	["comodoro"] = {"Comodoro Chevrolet",33000, ""}, --
	["c10"] = {"C10 Chevrolet",33000, ""}, --
	["astra"] = {"Astra Chevrolet",33000, ""}, --
	["cruze"] = {"Cruze Chevrolet",33000, ""}, --
	["golf1"] = {"Golf 1994",22000, ""}, --
	["golf2"] = {"Golf 2002",20000, ""}, --
	
	
	-- MOTOS
  }, 
  
  ["loja moto"] = {
   _config = {gpay="bank",gtype={"showroom","store","rental","personal"},vtype="car",blipid=226,blipcolor=4},
	["150"] = {"FAN ESD",9000, ""},
	["xj6vip"] = {"XJ6 VIP",27000, ""},
	["xre"] = {"Honda xre 2011",12800, ""}, --
	["hornet"] = {"Honda hornet 2008",32800, ""}, --
	["fazer"] = {"Yamaha Fazer 2015",10990, ""}, --
	["falcon"] = {"Honda falcon 2008",10499, ""}, --
	["bros"] = {"Honda Bros160 2017",12500, ""}, 
	["150"] = {"Honda Fan150 2013",7000, ""}, --
  }, 
  
  
  ["Ranch Main"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Ranch Main"},
  },
  ["Rich Housing"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Rich Housing"},
  },
  ["Rich Housing 2"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Rich Housing 2"},
  },
  ["Basic Housing 1"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Basic Housing 1"},
  },
  ["Basic Housing 2"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Basic Housing 2"},
  },
  ["Regular House 1"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 1"},
  },
  ["Regular House 2"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 2"},
  },
  ["Regular House 3"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 3"},
  },
  ["Regular House 4"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 4"},
  },
  ["Regular House 5"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 5"},
  },
  ["Regular House 6"]  = {
    _config = {gpay="wallet",gtype={"personal"},vtype="car",blipid=357,blipcolor=3,ghome="Regular House 6"},
  },
  
  ["LS Customs"]  = {
    _config = {gpay="wallet",gtype={"shop"},vtype="car",blipid=72,blipcolor=7},
	_shop = {
	  -- You can make different shops with different modifications for each garage of gtype shop
	  [0] = {"Spoilers",500,""},
	  [1] = {"Front Bumper",500,""},
      [2] = {"Rear Bumper",500,""}, 
      [3] = {"Side Skirt",500,""},  
      [4] = {"Exhaust",500,""},     
      [5] = {"Frame",500,""},       
      [6] = {"Grille",500,""},      
      [7] = {"Hood",500,""},        
      [8] = {"Fender",500,""},      
      [9] = {"Right Fender",500,""},
      [10] = {"Roof",500,""},        
      [11] = {"Engine",500,""},      
      [12] = {"Brakes",500,""},      
      [13] = {"Transmission",500,""},
      [14] = {"Horns",500,""},       
      [15] = {"Suspension",500,""},  
      [16] = {"Armor",500,""},      
      [18] = {"Turbo",500,""},
      [20] = {"Tire Smoke",500,""},
      [22] = {"Xenon Headlights",500,""},
      [23] = {"Wheels",500,"Press enter to change wheel type"},
      [24] = {"Back Wheels (Bike)",500,""}, 
      [25] = {"Plateholders",500,""},
      [27] = {"Trims",500,""},       
      [28] = {"Ornaments",500,""},   
      [29] = {"Dashboards",500,""},  
      [30] = {"Dials",500,""},       
      [31] = {"Door Speakers",500,""},
      [32] = {"Seats",500,""},       
      [33] = {"Steering Wheel",500,""},
      [34] = {"H Shift",500,""},     
      [35] = {"Plates",500,""},      
      [36] = {"Speakers",500,""},    
      [37] = {"Trunks",500,""},      
      [38] = {"Hydraulics",500,""},  
      [39] = {"Engine Block",500,""},
      [40] = {"Air Filter",500,""},  
      [41] = {"Struts",500,""},      
      [42] = {"Arch Covers",500,""}, 
      [43] = {"Arials",500,""},      
      [44] = {"Extra Trims",500,""}, 
      [45] = {"Tanks",500,""},       
      [46] = {"Windows",500,""},     
      [48] = {"Livery",500,""},      
	}
  },
}

-- position garages on the map {garage_type,x,y,z}
cfg.garages = {
  {"loja carro",-46.674224853516,-1096.9587402344,26.422344207764},-----loja
  {"loja moto",-40.997344970703,-1099.4600830078,26.422344207764},-----------loja
  {"Garagem",-332.6287,-779.1125,33.9648},
  {"Garagem",1158.8588867188,-1510.8195800781,34.692577362061},----ospi  
  {"Garagem",455.05880737305,-1020.3707275391,28.31156539917},------delegacia 
  {"Garagem",379.26959228516,-578.05090332031,28.687629699707},
  {"Garagem",1725.9693603516,3318.0473632812,41.223503112792},---------corrida
  {"Garagem",178.48603820801,-1656.724609375,29.803203582764}, 
  {"Garagem",1925.3059082031,3738.9421386719,32.591606140137},---------------favelao
  {"Garagem",-623.28009033203,56.552303314209,43.7301902771}, -- house garage
  {"Garagem",-1448.5615234375,-516.96600341797,31.581823348999},
  {"Garagem",-796.19598388672,324.0544128418,85.700408935547},
  {"Garagem",90.218589782715,-1966.3078613281,20.747468948364}, -- FAVELA GTA SAN ANDREAS [TCA]
  {"Garagem",-797.77563476563,599.57348632813,127.32173156738}, -- FAVELA AREA RICA       [TCP]
  {"Garagem",752.60040283203,-201.75495910645,66.114463806152}, -- FAVELA DA BR           [ADA]
  {"Garagem",1574.8706054688,-1750.0263671875,88.224189758301}, -- FAVELA PETROLEO        [CV ]
  {"Personal",215.124,-791.377,30.646},
  {"Personal",-334.685,289.773,85.705},
  {"Personal",-55.272,-1838.71,26.442},
  {"Personal",126.434,6610.04,31.750},
  {"LS Customs",-337.3863,-136.9247,39.0737},
  {"LS Customs",-1155.536,-2007.183,13.244},
  {"LS Customs",731.8163,-1088.822,22.233},
  {"LS Customs",1175.04,2640.216,37.82177},
  {"LS Customs",110.8406,6626.568,32.287},
  {"Ranch Main", 1408.32495117188,1117.44665527344,114.737692260742},
  {"Rich Housing", -751.5107421875,365.883117675781,87.9666687011719},
  {"Rich Housing 2",-81.860595703125,-809.427734375,36.4030570983887},
  {"Basic Housing 1", -635.4501953125,57.4368324279785,44.8587303161621},
  {"Basic Housing 2", -1448.18701171875,-514.856567382813,31.6881823348999},
  {"Regular House 1", 843.398803710938,-191.063568115234,72.6714935302734},
  {"Regular House 2", 174.276748657227,483.056274414063,142.339096069336},
  {"Regular House 3", -820.590148925781,184.175857543945,72.0921401977539},
  {"Regular House 4", -1858.14965820313,328.570861816406,88.6500091552734},
  {"Regular House 5", -25.002462387085,-1436.29431152344,30.6531391143799},
  {"Regular House 6", -2587,1930.97326660156,167.304656982422},  
  {"onibus",-325.83905029297,-1008.9650878906,30.38508605957},
  {"limpador de piscina",520.70068359375,169.26039123535,99.371765136719},---------------------------limpador de piscina
  {"correio",493.94659423828,-1968.8747558594,24.924398422241},----------------------------correio
  {"Barco pescador",12.583372116089,-2802.0444335938,2.5259544849396},
  {"lixeiro",-468.04852294922,-1676.3823242188,19.053634643555},
  {"advogado",-591.73077392578,-669.74658203125,32.09875869751},
  {"moto_boy",141.74586486816,-1458.0601806641,29.141620635986},   -- jobs garage  
  {"police",-479.62710571289,6022.0771484375,31.340547561646},---prf 
  {"police",448.804, -1020.32, 28.4669},
  {"bope",141.06597900391,-742.68548583984,33.133296966553},
  {"hospitalcar",1161.3110351563,-1493.9163818359,34.692573547363}, 
  {"hospitalele",1219.2795410156,-1517.4210205078,34.700019836426},
  {"uber",900.77600097656,-181.19085693359,73.90412902832}, -- jobs garage
  {"PDHeli",481.621856689453,-982.223693847656,41.0080757141113},
  {"Helicopters",1750, 3260, 41.37},
  {"Helicopters",-1233, -2269, 13.9},
  {"Helicopters",-745, -1468, 5},
  {"barcos",-849.5, -1368.64, 1.6},
  {"barcos",1538, 3902, 30.35},
  {"barcos", -1631.29614257813,-1159.62170410156,1.46207177639008},
  {"Transport",-962.553039550781,-2965.82470703125,13.9450702667236},
  {"Trailers",-978.674682617188,-2994.29028320313,13.945068359375},
  {"repair",497.90063476563,-1333.9915771484,29.330684661865},   -- jobs garage
  {"Motorista_bancario",-339.52862548828,-975.17901611328,31.080625534058},   -- jobs garage
  {"helicópteros da polícia",-474.60412597656,5989.2470703125,31.33670425415},----prf  
  {"helicópteros da polícia",449.15,-981.23,43.69},
  {"helicópteros da polícia",-1178.4853515625,-2845.80493164063,13.9457626342773},
  {"Caminhões",182.601486206055,4414.41650390625,74.3924255371094},
  {"Caminhões",-384.627105712891,1238.93811035156,326.018218994141},
  {"Caminhões",2700.82080078125,5136.41650390625,44.4120025634766},
  {"Caminhões",-882.533325195313,-2730.81713867188,13.8284845352173},
  {"Jatos de loja",-1144.0738525391,-2944.1264648438,13.944903373718},
  {"Aeronaves turboélice Loja",-1169.9676513672,-2931.8337402344,13.944881439209},
  {"helicópteros da Bope",-75.106758117676,-819.29333496094,327.87532348633},
 
}

return cfg
