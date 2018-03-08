
cfg = {}

cfg.lang = "en" -- set your lang (file must exist on cfg/lang)

cfg.blips = true -- enable disable blips
cfg.key = 45 -- INPUT_RELOAD

cfg.blipid = 108 -- blip id 108 = dollar sign
cfg.blipsz = 0.5 -- blip size 0 to 1
cfg.blipcr = 1 -- blip color 1 = red

cfg.cops = "robbery.police" -- permission given to cops

cfg.robbery = { -- list of robberies
			--[[ LOJA ]]--
	["paleto_twentyfourseven"] = { 
	  name = "Twenty Four Seven. (Paleto Bay)",
	  pos = {1734.48046875, 6420.38134765625, 34.5372314453125}, 
	  dist = 15.0, rob = 300, wait = 900,	cops = 2, stars = 2, min = 2000, max = 8000
	},
	["sandyshores_twentyfoursever"] = { 
	  name = "Twenty Four Seven. (Sandy Shores)", 
	  pos = {1960.7580566406, 3749.26367187, 31.3437423706055},
	  dist = 15.0, rob = 300, wait = 900, cops = 2, stars = 2, min = 6000, max = 8000
	},
	["littleseoul_twentyfourseven"] = { 
	  name = "Twenty Four Seven. (Little Seoul)",
	  pos = {-709.17022705078, -904.21722412109, 19.215591430664},
	  dist = 15.0, rob = 300, wait = 900, cops = 2, stars = 2, min = 6000, max = 8000
	},
	["southlossantos_gasstop"] = { 
	  name = "Limited LTD Gas Stop. (South Los Santos)",
	  pos = {28.7538948059082, -1339.8212890625, 29.4970436096191}, 
	  dist = 15.0, rob = 300, wait = 900, cops = 2, stars = 2, min = 6000, max = 8000
	},
	["southlossantos_twentyfourseven"] = { 
	  name = "Twenty Four Seven. (South Los Santos)",
	  pos = {-43.1531448364258, -1748.75244140625, 29.4209976196289},
	  dist = 15.0, rob = 300, wait = 900, cops = 2, stars = 2, min = 6000, max = 8000
	},
	["vinewood_twentyfourseven"] = { 
	  name = "Twenty Four Seven. (Vinewood)",
	  pos = {378.030487060547, 332.944427490234, 103.566375732422},
	  dist = 15.0, rob = 300, wait = 900, cops = 3, stars = 2, min = 6000, max = 8000
	},
	["eastlossantos_robsliquor"] = { 
	  name = "Rob's Liquor. (East Los Santos)",
	  pos = {1126.68029785156, -980.39501953125, 45.4157257080078}, 
	  dist = 15.0, rob = 300, wait = 900, cops = 3, stars = 2, min = 6000, max = 8000
	},
	["grapeseed_gasstop"] = { 
	  pos = {1707.52648925781, 4920.05126953125, 42.0636787414551}, 
	  name = "Limited LTD Gas Stop. (Grapeseed)",
	  dist = 15.0, rob = 300, wait = 900, cops = 3, stars = 2, min = 6000, max = 8000
	},
	["morningwood_robsliquor"] = { 
	  name = "Rob's Liquor. (Morning Wood)", 
	  pos = {-1479.22424316406, -375.097686767578, 39.1632804870605}, 
	  dist = 15.0, rob = 300, wait = 900, cops = 3, stars = 2, min = 6000, max = 8000
	},
	["chumash_robsliquor"] = { 
	  name = "Rob's Liquor. (Chumash)", 
	  pos = {-2959.37524414063, 387.556365966797, 14.043158531189}, 
	  dist = 15.0, rob = 300, wait = 900, cops = 3, stars = 2, min = 6000, max = 8000
	},
	["eastlossantos_gasstop"] = { 
	  name = "Limited LTD Gas Stop. (East Los Santos)", 
	  pos = {1160.06237792969, -314.061828613281, 69.2050628662109},
	  dist = 15.0, rob = 300, wait = 900, cops = 3, stars = 2, min = 6000, max = 11000
	},
	["tataviam_twentyfourseven"] = { 
	  name = "Twenty Four Seven. (Tataviam Mountains)", 
	  pos = {2549.400390625, 385.048309326172, 108.622955322266}, 
	  dist = 15.0, rob = 300, wait = 900, cops = 3, stars = 2, min = 6000, max = 8000
	},
	["rockford_jewlery"] = { 
	  name = " Vangelico Jewelry name. (Rockford Hills)", 
	  pos = {-621.989135742188, -230.804443359375, 38.0570297241211},
	  dist = 15.0, rob = 600, wait = 900, cops = 3, stars = 2, min = 5000, max = 12000
	},
				--[[ BANKS ]]--
	["fleeca"] = { 
	  name = "Fleeca Bank",  
	  pos = {147.04908752441, -1044.9448242188, 29.36802482605}, 
	  dist = 15.0, rob = 600, wait = 1600, cops = 4, stars = 2, min = 5000, max = 12000
	},
	["fleeca2"] = { 
	  name = "Fleeca Bank (Highway)", 
	  pos = {-2957.6674804688, 481.45776367188, 15.697026252747}, 
	  dist = 15.0, rob = 600, wait = 1600, cops = 4, stars = 2, min = 5000, max = 12000
	},
	["blainecounty"] = { 
	  name = "Blaine County Savings", 
	  pos = {-107.06505584717, 6474.8012695313, 31.62670135498}, 
	  dist = 15.0, rob = 600, wait = 1600, cops = 4, stars = 2, min = 5000, max = 12000
	},
	["fleeca6"] = { 
	  name = "Fleeca Bank (Desert)", 
	  pos = {1176.86865234375, 2711.91357421875, 38.097785949707}, 
	  dist = 15.0, rob = 600, wait = 1600, cops = 4, stars = 2, min = 8000, max = 12000
	},
	["pacific"] = { 
	  name = "Pacific Standard PDB (Downtown Vinewood)", 
	  pos = {255.001098632813, 225.855895996094, 101.005694274902}, 
	  dist = 15.0, rob = 600, wait = 1600, cops = 4, stars = 2, min = 8000, max = 17000
	},
				--[[ MORE ]]--	
}

return cfg