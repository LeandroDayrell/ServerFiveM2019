
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

----------------------------------------------------------------------------------------- laboratory
local itemtr_laboratory = {
  name="workbench", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["cocaine"] = { -- action name
      description="make cocaine", -- action description
      in_money=500, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
    ["benzoilmetilecgonina"] = 1
    
    },
      products={ -- items given per unit
    ["cocaine"] = 5
    }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
    ["science.chemicals"] = 10
    }
    },
  ["weed"] = { -- action name
      description="make weed", -- action description
      in_money=500, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
    ["seeds"] = 1
    },
      products={ -- items given per unit
    ["weed"] = 5
    }, 
      aptitudes={ -- optional
        ["laboratory.weed"] = 5, -- "group.aptitude", give 1 exp per unit
    ["science.chemicals"] = 10
    }
    },
  ["lsd"] = { -- action name
      description="make lsd", -- action description
      in_money=500, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
    ["harness"] = 1
    },
      products={ -- items given per unit
    ["lsd"] = 5
    }, 
      aptitudes={ -- optional
        ["laboratory.lsd"] = 5, -- "group.aptitude", give 1 exp per unit
    ["science.chemicals"] = 10
    }
    },
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
    out_dinheirosujo=20, -- DINHEIRO SUJO
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
  ["barraco8"] = {
    {
    {"entry",1637.5877685547,-1715.9406738281,125.26901245117},---entra
      {"chest",1644.7756347656,-1715.6630859375,125.25621032715, _config = {weight=400}},--arm
      {"wardrobe",1644.5662841797,-1720.4100341797,125.25621032715},---guard
      {"gametable",1643.3918457031,-1715.6369628906,125.30393981934},--jogar
      {"itemtr", _config = itemtr_study, 1641.6838378906,-1717.8332519531,125.33193969727},
      {"itemtr", _config = itemtr_hacker, 1641.6994628906,-1715.5135498047,125.30062866211},
	  {"radio",1640.0623779297,-1719.1184082031,125.25649261475, _config = { stations = radio_stations }}
    }
  }, 
  ["barraco7"] = {
    {
    {"entry",-262.66940307617,-1608.6832275391,35.777538299561},---entra
      {"chest",-269.84307861328,-1609.1270751953,35.763164520264, _config = {weight=200}},--arm
      {"wardrobe",-266.45831298828,-1612.2995605469,35.777263641357},---guard
      {"gametable",-263.01147460938,-1609.8778076172,35.777362823486},--jogar
      {"itemtr", _config = itemtr_study, -264.19931030273,-1608.36328125,35.777492523193},
      {"itemtr", _config = itemtr_hacker, -263.45388793945,-1610.8331298828,35.777305603027},
	  {"radio",-266.34796142578,-1606.7210693359,35.77746963501, _config = { stations = radio_stations }}
    }
  },    
  ["barraco6"] = {
    {
    {"entry",1357.0168457031,-439.93045043945,103.64831542969},---entra
      {"chest",1364.9721679688,-441.58486938477,103.6351852417, _config = {weight=200}},--arm
      {"wardrobe",1361.7733154297,-444.47866821289,103.63545227051},---guard
      {"gametable",1359.8984375,-438.36685180664,103.67601013184},--jogar
      {"itemtr", _config = itemtr_study, 1360.2342529297,-442.02694702148,103.63570404053},
      {"itemtr", _config = itemtr_hacker, 1361.1712646484,-438.24771118164,103.67646789551},
	  {"radio",1362.33984375,-437.5964050293,103.63529968262, _config = { stations = radio_stations }}
    }
  },    
  ["barraco5"] = {
    {
    {"entry",1279.6340332031,-658.56713867188,70.972923278809},
      {"chest",1278.5155029297,-653.83923339844,70.972877502441, _config = {weight=200}},
      {"wardrobe",1275.9337158203,-658.61749267578,70.972747802734},
      {"gametable",1279.3767089844,-659.68493652344,70.97282409668},
      {"itemtr", _config = itemtr_study, 1279.5935058594,-657.21807861328,70.972946166992},
      {"itemtr", _config = itemtr_hacker, 1278.1821289063,-660.05529785156,70.972709655762}
    }
  },
  ["barraco4"] = {
    {
      {"entry",1373.0469970703,-596.42053222656,78.387550354004},
      {"chest",1368.5181884766,-598.61346435547,78.38744354248, _config = {weight=200}},
      {"wardrobe",1373.4571533203,-601.73468017578,78.387344360352},
      {"gametable",1374.4064941406,-598.07141113281,78.387413024902},
      {"itemtr", _config = itemtr_study, 1372.302734375,-597.26483154297,78.387588500977},
      {"itemtr", _config = itemtr_hacker, 1374.6323242188,-599.13421630859,78.387252807617}
    }
  },
  ["barraco3"] = {
    {
    {"entry",1315.8626708984,-569.20599365234,75.977935791016},
      {"chest",1310.9030761719,-567.67175292969,75.977935791016, _config = {weight=400}},
      {"wardrobe",1312.6502685547,-572.97448730469,75.977737426758},
      {"gametable",1315.4503173828,-571.01226806641,75.977699279785},
      {"itemtr", _config = itemtr_study, 1371.9038085938,-597.37902832031,78.387535095215},
      {"itemtr", _config = itemtr_hacker, 1315.3850097656,-571.75964355469,75.97770690918}
    }
  },
  ["barraco2"] = {
    {
    {"entry",1305.2862548828,-538.99176025391,74.985137939453},
      {"chest",1310.5626220703,-539.98828125,74.985107421875, _config = {weight=400}},
      {"wardrobe",1307.85546875,-534.64556884766,74.984939575195},
      {"gametable",1305.0905761719,-537.23260498047,74.984985351563},
      {"itemtr", _config = itemtr_study, 1307.1151123047,-538.85174560547,74.985084533691},
      {"itemtr", _config = itemtr_hacker, 1305.4038085938,-535.98272705078,74.984909057617}
    }
  },
  ["barraco1"] = {
    {
    {"entry",-768.47760009766,613.48352050781,140.33073425293},
      {"chest",-769.51373291016,606.37738037109,140.35647583008, _config = {weight=400}},
      {"wardrobe",-767.05108642578,611.29693603516,140.33076477051},
      {"gametable",-764.17303466797,614.29962158203,136.53060913086},
      {"itemtr", _config = itemtr_study, -758.55780029297,611.541015625,144.14051818848},--
      {"itemtr", _config = itemtr_hacker, -763.85296630859,613.77435302734,136.53063964844},
	  {"radio",-772.92492675781,613.00537109375,140.36578369141, _config = { stations = radio_stations }}
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
    buy_price = 85000,
    sell_price = 50000,
    max = 2
  },
  ["barraco 3"] = { -- FAVELA BR ADA
    slot = "barraco3",
    entry_point = {1312.6828613281,-565.75512695313,72.066627502441},
    buy_price = 85000,
    sell_price = 50000,
    max = 2
  },
  ["barraco 4"] = { -- FAVELA BR ADA
    slot = "barraco4",
    entry_point = {1368.4372558594,-595.38323974609,74.337738037109},
    buy_price = 85000,
    sell_price = 50000,
    max = 2
  },
  ["barraco 5"] = {-- FAVELA BR ADA
    slot = "barraco5",
    entry_point = {1281.9010009766,-653.41528320313,67.487602233887},
    buy_price = 85000,
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
  }
}

return cfg
