
local cfg = {}

-- define market types like garages and weapons
-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the market)
-- .
cfg.market_types = {
  ["Mcdonald"] = {
    _config = {blipid=52, blipcolor=11},
    ["milk"] = 2,
	["picareta"] = 2,
	["pa"] = 2,
    ["water"] = 2,
    ["coffee"] = 4,
    ["tea"] = 4,
    ["icetea"] = 8,
    ["orangejuice"] = 8,
    ["gocagola"] = 12,
    ["redgull"] = 12,
    ["lemonlimonad"] = 14,
    ["vodka"] = 30,
    ["bread"] = 2,
    ["donut"] = 2,
    ["tacos"] = 8,	
    ["sandwich"] = 20,
    ["kebab"] = 20,
    ["pdonut"] = 65
  },
  ["Mercado Policial"] = {
    _config = {},
    ["milk"] = 2,
	["picareta"] = 2,
	["pa"] = 2,
    ["water"] = 2,
    ["coffee"] = 4,
    ["tea"] = 4,
    ["icetea"] = 8,
    ["orangejuice"] = 8,
    ["gocagola"] = 12,
    ["redgull"] = 12,
    ["lemonlimonad"] = 14,
    ["vodka"] = 30,
    ["bread"] = 2,
    ["donut"] = 2,
    ["tacos"] = 8,
    ["sandwich"] = 20,
    ["kebab"] = 20,
    ["pdonut"] = 65
  },
  ["bar"] = {
    _config = {blipid=93, blipcolor=44},
    ["vodka"] = 20,
    ["jackncoke"] = 15,
    ["whiskey"] = 20,
    ["beer"] = 10,
    ["wine"] = 55,
    ["wings"] = 25,
    ["Box of Matches"] = 3
  },
    ["Bar balada"] = {
    _config = {blipid=75, blipcolor=75},
    ["weed"] = 200,
    ["lsd"] = 150
  },
  ["Bombeiro kit"] = {
    _config = {blipid=51, blipcolor=68, permissions={"emergency.market"}},
    ["medkit"] = 0
  },
  ["Produto ilegal"] = {
    _config = {blipid=310, blipcolor=68, permissions={"farmaceutico.market"}},
    ["seeds"] = 100,
  ["benzoilmetilecgonina"] = 200,
  ["harness"] = 500
  },
  ["Mecanico"] = {
    _config = {blipid=446, blipcolor=47, permissions={"repair.market"}},
    ["repairkit"] = 0
  }, 
  ["Loja de Materiais"] = {
    _config = {blipid=478, blipcolor=56},
    ["picareta"] = 1,
    ["foice"] = 1,
    ["pa"] = 1,
    ["oxigenio"] = 1,
    ["balde"] = 1,
  },
}

-- list of markets {type,x,y,z}

cfg.markets = {
  --{"Mcdonald",260.41717529297,-1376.4139404297,39.534381866455},----hosp
  --{"Mcdonald",128.1410369873, -1286.1120605469, 29.281036376953},
  --{"Mcdonald",-443.9186706543,6011.3486328125,31.716388702393},  ---prf -443.9186706543,6011.3486328125,31.716388702393
  {"Mcdonald",-30.494962692261,-1110.0574951172,26.422355651855},---agiota
  {"Mcdonald",-47.522762298584,-1756.85717773438,29.4210109710693},
  {"Mcdonald",25.7454013824463,-1345.26232910156,29.4970207214355}, 
  {"Mcdonald",1135.57678222656,-981.78125,46.4157981872559}, 
  {"Mcdonald",1163.53820800781,-323.541320800781,69.2050552368164}, 
  {"Mcdonald",374.190032958984,327.506713867188,103.566368103027}, 
  {"Mcdonald",2555.35766601563,382.16845703125,108.622947692871}, 
  {"Mcdonald",2676.76733398438,3281.57788085938,55.2411231994629}, 
  {"Mcdonald",1960.50793457031,3741.84008789063,32.3437385559082},
  --{"Mcdonald",1731.9909667968,3244.8815917968,41.35252380371},-------------- corrida
  --{"Mcdonald",1393.23828125,3605.171875,34.9809303283691}, 
  {"Mcdonald",1166.18151855469,2709.35327148438,38.15771484375}, 
  --{"Mcdonald",547.987609863281,2669.7568359375,42.1565132141113}, 
  {"Mcdonald",1698.30737304688,4924.37939453125,42.0636749267578}, 
  {"Mcdonald",1729.54443359375,6415.76513671875,35.0372200012207}, 
  --{"Mcdonald",-3243.9013671875,1001.40405273438,12.8307056427002}, 
  {"Mcdonald",-2967.8818359375,390.78662109375,15.0433149337769}, 
  --{"Mcdonald",-3041.17456054688,585.166198730469,7.90893363952637}, 
  --{"Mcdonald",-1820.55725097656,792.770568847656,138.113250732422}, 
  {"Mcdonald",-1486.76574707031,-379.553985595703,40.163387298584}, 
  --{"Mcdonald",-1223.18127441406,-907.385681152344,12.3263463973999}, 
  {"Mcdonald",-707.408996582031,-913.681701660156,19.2155857086182},
  {"Mcdonald",-2957.9416503906,1298.4057617188,45.344375610352},
  --{"bar",-560.127807617188,287.055633544922,82.1764602661133}, --Tequi-La-La
  --{"bar",1985.67993164063,3053.75390625,47.2151870727539}, -- Yellow Jack
  {"Bombeiro kit",1206.935546875,-1478.5142822266,34.859539031982}, -- SAMU ANTIGO
  --{"Bombeiro kit",-505.1851,-293.7290,35.4426},
  --{"Bombeiro kit",-314.71081542969,-960.70977783203,31.080614089966},
  --{"Bombeiro kit",254.81767272949,-1342.3132324219,24.537815093994},
  {"Produto ilegal",1140.0516357422,-645.91284179688,57.147071838379},
  {"Produto ilegal",466.33911132813,-1689.1519775391,29.38158416748},
  {"Mecanico",473.83001708984,-1314.0598144531,29.207023620605},
  
  {"Mercado Policial",152.97636413574,-755.92291259766,258.15194702148},
  {"Mercado Policial",436.57998657227,-986.58032226563,30.689590454102},
  {"Loja de Materiais",841.1220703125,-1031.0849609375,28.194864273071},
  {"Loja de Materiais",22.106534957886,-1110.1981201172,29.797025680542},
  
  
  
  -- FAVELAS
  
  {"Buteco CV",1482.6285400391,-1609.8885498047,72.228302001953}, -- FAVELA PETROLEO CV
  {"Buteco TCA",-46.414993286133,-1840.13671875,26.548919677734}, -- FAVELA SANANDREAS TCA
  --{"Mcdonald",-1223.18127441406,-907.385681152344,12.3263463973999}, 
  --{"Mcdonald",-707.408996582031,-913.681701660156,19.2155857086182},
  
  
  
  
}

return cfg
