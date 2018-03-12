
local cfg = {}

-- example of study transformer
local itemtr_study = {
  name="Bookcase", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["Chemicals book"] = { -- action name
      description="Read a chemicals book", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.chemicals"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
    ["Mathematics book"] = { -- action name
      description="Read a mathematics book", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.mathematics"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    }
  }
}
------------------------------------------------ hacker
local itemtr_hacker = {
  name="hacker", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["logic pdf"] = { -- action name
      description="Read a logic pdf", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["hacker.logic"] = 10 -- "group.aptitude", give 1 exp per unit
      }
    },
    ["c++ pdf"] = { -- action name
      description="Read a C++ pdf", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["hacker.c++"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
  ["lua pdf"] = { -- action name
      description="Read a C++ pdf", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["hacker.lua"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
  ["hacking"] = { -- action name
      description="hacking a Credit card informations", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      out_dinheirosujo=3, -- DINHEIRO SUJO
      reagents={}, -- items taken per unit
      products={},
      aptitudes={ -- optional
        ["hacker.lua"] = 1, -- "group.aptitude", give 1 exp per unit
        ["hacker.c++"] = 1, -- "group.aptitude", give 1 exp per unit
        ["hacker.logic"] = 1, -- "group.aptitude", give 1 exp per unit
        ["hacker.hacking"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
  }
}

local radio_stations = {
  ["RACIONAIS"] = "https://ia801501.us.archive.org/19/items/RACIONAISMCSASMELHORES/RACIONAIS_MC_S_AS_MELHORES.ogg",
  ["FUNK RJ"] = "https://ia801503.us.archive.org/2/items/RadioFunkBrasilRJ/Radio%20Funk.ogg"
}

cfg.slot_types = {
  ["barraco14"] = {
    {
      {"entry",1578.1643066406,-1473.3696289063,93.586006164551},---entra
      {"chest",1582.6420898438,-1478.3494873047,93.573204040527, _config = {weight=100}},--arm
      {"wardrobe",1577.1221923828,-1478.5706787109,93.573463439941},---guard
	  {"radio",1581.5423583984,-1476.3891601563,93.613677978516, _config = { stations = radio_stations }}
    }
  },
  ["barraco13"] = {
    {
      {"entry",1595.1490478516,-1456.1262207031,94.377540588379},---entra
      {"chest",1598.4168701172,-1462.0440673828,94.405204772949, _config = {weight=100}},--arm
      {"wardrobe",1599.7945556641,-1460.0836181641,94.364921569824},---guard
	  {"radio",1597.8824462891,-1458.798828125,94.405212402344, _config = { stations = radio_stations }}
    }
  },
  ["barraco12"] = {
    {
      {"entry",1431.5068359375,-1744.9782714844,74.650939941406},---entra
      {"chest",1431.5070800781,-1749.9328613281,74.661231994629, _config = {weight=100}},--arm
      {"wardrobe",1428.8835449219,-1747.1264648438,74.648155212402},---guard
	  {"radio",1431.2214355469,-1747.66015625,74.659530639648, _config = { stations = radio_stations }}
    }
  },
  ["barraco11"] = {
    {
      {"entry",1434.0916748047,-1734.3073730469,74.307777404785},---entra
      {"chest",1432.7993164063,-1739.2482910156,74.317375183105, _config = {weight=100}},--arm
      {"wardrobe",1431.3704833984,-1736.2882080078,74.305778503418},---guard
	  {"radio",1433.3178710938,-1737.3814697266,74.31844329834, _config = { stations = radio_stations }}
    }
  },
  ["barraco10"] = {
    {
      {"entry",-746.56817626953,548.90588378906,129.0707244873},---entra
      {"chest",-744.35296630859,554.08062744141,129.09712219238, _config = {weight=200}},--arm
      {"wardrobe",-742.66436767578,553.54443359375,129.05807495117},---guard
      {"itemtr", _config = itemtr_hacker, -745.6416015625,551.33911132813,129.0984954834},
	  {"radio",-743.36157226563,550.29479980469,129.09800720215, _config = { stations = radio_stations }}
    }
  },
  ["barraco9"] = {
    {
      {"entry",-706.4404296875,523.32110595703,121.06898498535},---entra
      {"chest",-700.619140625,527.49005126953,121.05618286133, _config = {weight=200}},--arm
      {"wardrobe",-698.42864990234,522.34216308594,121.05618286133},---guard
      {"itemtr", _config = itemtr_hacker, -703.78363037109,525.39227294922,121.05626678467},
	  {"radio",-701.52239990234,523.58404541016,121.09664916992, _config = { stations = radio_stations }}
    }
  },
  ["barraco8"] = {
    {
      {"entry",1637.5877685547,-1715.9406738281,125.26901245117},---entra
      {"chest",1644.7756347656,-1715.6630859375,125.25621032715, _config = {weight=400}},--arm
      {"wardrobe",1644.5662841797,-1720.4100341797,125.25621032715},---guard
      {"itemtr", _config = itemtr_hacker, 1641.6994628906,-1715.5135498047,125.30062866211},
	  {"radio",1640.0623779297,-1719.1184082031,125.25649261475, _config = { stations = radio_stations }}
    }
  }, 
  ["barraco7"] = {
    {
      {"entry",-262.66940307617,-1608.6832275391,35.777538299561},---entra
      {"chest",-269.84307861328,-1609.1270751953,35.763164520264, _config = {weight=200}},--arm
      {"wardrobe",-266.45831298828,-1612.2995605469,35.777263641357},---guard
      {"itemtr", _config = itemtr_hacker, -263.45388793945,-1610.8331298828,35.777305603027},
	  {"radio",-266.34796142578,-1606.7210693359,35.77746963501, _config = { stations = radio_stations }}
    }
  },    
  ["barraco6"] = {
    {
    {"entry",1357.0168457031,-439.93045043945,103.64831542969},---entra
      {"chest",1364.9721679688,-441.58486938477,103.6351852417, _config = {weight=200}},--arm
      {"wardrobe",1361.7733154297,-444.47866821289,103.63545227051},---guard
      {"itemtr", _config = itemtr_hacker, 1361.1712646484,-438.24771118164,103.67646789551},
	  {"radio",1362.33984375,-437.5964050293,103.63529968262, _config = { stations = radio_stations }}
    }
  },    
  ["barraco5"] = {
    {
      {"entry",1279.6340332031,-658.56713867188,70.972923278809},
      {"chest",1278.5155029297,-653.83923339844,70.972877502441, _config = {weight=200}},
      {"wardrobe",1275.9337158203,-658.61749267578,70.972747802734},
      {"itemtr", _config = itemtr_hacker, 1278.1821289063,-660.05529785156,70.972709655762},
	  {"radio",1277.2941894531,-656.99475097656,70.972648620605, _config = { stations = radio_stations }}
    }
  },
  ["barraco4"] = {
    {
      {"entry",1373.0469970703,-596.42053222656,78.387550354004},
      {"chest",1368.5181884766,-598.61346435547,78.38744354248, _config = {weight=200}},
      {"wardrobe",1373.4571533203,-601.73468017578,78.387344360352},
      {"itemtr", _config = itemtr_hacker, 1374.6323242188,-599.13421630859,78.387252807617},
	  {"radio",1372.6166992188,-600.15875244141,78.602012634277, _config = { stations = radio_stations }}
    }
  },
  ["barraco3"] = {
    {
      {"entry",1315.8626708984,-569.20599365234,75.977935791016},
      {"chest",1310.9030761719,-567.67175292969,75.977935791016, _config = {weight=400}},
      {"wardrobe",1312.6502685547,-572.97448730469,75.977737426758},
      {"itemtr", _config = itemtr_hacker, 1315.3850097656,-571.75964355469,75.97770690918},
	  {"radio",1312.3565673828,-570.71716308594,75.977615356445, _config = { stations = radio_stations }}
    }
  },
  ["barraco2"] = {
    {
      {"entry",1305.2862548828,-538.99176025391,74.985137939453},
      {"chest",1310.5626220703,-539.98828125,74.985107421875, _config = {weight=400}},
      {"wardrobe",1307.85546875,-534.64556884766,74.984939575195},
      {"itemtr", _config = itemtr_hacker, 1305.4038085938,-535.98272705078,74.984909057617},
	  {"radio",1312.3565673828,-570.71716308594,75.977615356445, _config = { stations = radio_stations }}
    }
  },
  ["barraco1"] = {
    {
      {"entry",-768.47760009766,613.48352050781,140.33073425293},
      {"chest",-769.51373291016,606.37738037109,140.35647583008, _config = {weight=400}},
      {"wardrobe",-767.05108642578,611.29693603516,140.33076477051},
      {"itemtr", _config = itemtr_hacker, -763.85296630859,613.77435302734,136.53063964844},
	  {"radio",1308.0931396484,-537.03936767578,74.984794616699, _config = { stations = radio_stations }}
    }
  }
}

-- define home clusters
cfg.homes = {
  ["barraco do lider TCP"] = { -- FAVELA RICA TCP
    slot = "barraco1",
    entry_point = {-789.33831787109,599.568359375,127.3191986084},
    buy_price = 2000000,
    sell_price = 100,
    max = 5,
    blipid=374,
    blipcolor=64
  },
  ["barraco 2"] = { -- FAVELA BR ADA
    slot = "barraco2",
    entry_point = {1309.1112060547,-542.18518066406,71.268539428711},
    buy_price = 65000,
    sell_price = 50000,
    max = 2
  },
  ["barraco 3"] = { -- FAVELA BR ADA
    slot = "barraco3",
    entry_point = {1312.6828613281,-565.75512695313,72.066627502441},
    buy_price = 65000,
    sell_price = 50000,
    max = 2
  },
  ["barraco 4"] = { -- FAVELA BR ADA
    slot = "barraco4",
    entry_point = {1368.4372558594,-595.38323974609,74.337738037109},
    buy_price = 65000,
    sell_price = 50000,
    max = 2
  },
  ["barraco 5"] = {-- FAVELA BR ADA
    slot = "barraco5",
    entry_point = {1281.9010009766,-653.41528320313,67.487602233887},
    buy_price = 65000,
    sell_price = 50000,
    max = 2
  },
  ["barraco do lider ADA"] = { -- FAVELA RICA ADA
    slot = "barraco6",
    entry_point = {1346.0145263672,-423.43246459961,86.116271972656},
    buy_price = 2000000,
    sell_price = 100,
    max = 5,
    blipid=374,
    blipcolor=64
  },
  ["barraco do lider TCA"] = { -- FAVELA RICA ADA
    slot = "barraco7",
    entry_point = {-265.17938232422,-1604.4034423828,31.848691940308},
    buy_price = 2000000,
    sell_price = 100,
    max = 5,
    blipid=374,
    blipcolor=64
  },
  ["barraco do lider CV"] = { -- FAVELA RICA ADA
    slot = "barraco8",
    entry_point = {1629.6979980469,-1723.8428955078,88.86319732666},
    buy_price = 2000000,
    sell_price = 100,
    max = 5,
    blipid=374,
    blipcolor=64
   },
  ["barraco 9"] = {
    slot = "barraco9",
    entry_point = {-706.59210205078,523.66247558594,113.44624328613},
    buy_price = 65000,
    sell_price = 50000,
    max = 2
   },
  ["barraco 10"] = {
    slot = "barraco10",
    entry_point = {-746.28875732422,546.35369873047,117.60461425781},
    buy_price = 65000,
    sell_price = 50000,
    max = 2
   },
  ["barraco 11"] = {
    slot = "barraco11",
    entry_point = {1434.6684570313,-1736.6739501953,67.984039306641},
    buy_price = 45000,
    sell_price = 50000,
    max = 2
	},
  ["barraco 12"] = {
    slot = "barraco12",
    entry_point = {1432.6475830078,-1747.1678466797,68.327133178711},
    buy_price = 45000,
    sell_price = 50000,
    max = 2
	},
  ["barraco 13"] = {
    slot = "barraco12",
    entry_point = {1594.9068603516,-1455.9592285156,82.093856811523},
    buy_price = 45000,
    sell_price = 50000,
    max = 2
	},
  ["barraco 14"] = {
    slot = "barraco12",
    entry_point = {1576.1922607422,-1476.2288818359,81.699531555176},
    buy_price = 45000,
    sell_price = 50000,
    max = 2
  }
}

return cfg
