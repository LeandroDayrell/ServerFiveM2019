
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
-----------------
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
  ---------------------------------------------
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
  ["TechnoBase.FM"] = "http://mp3.stream.tb-group.fm:80/tt.ogg",
  ["Phate Radio"] = "http://phate.io/listen.ogg",
  ["Radio Rock"] = "http://stream.radioreklama.bg:80/radio1rock.ogg",
  ["R 247drumandbass.com"] = "http://stream.247drumandbass.com:8000/256k.ogg",
  ["Radio Funk RJ"] = "https://ia801503.us.archive.org/2/items/RadioFunkBrasilRJ/Radio%20Funk.ogg"
}
-- default flats positions from https://github.com/Nadochima/HomeGTAV/blob/master/List

-- define the home slots (each entry coordinate should be unique for ALL types)
-- each slots is a list of home components
--- {component,x,y,z} (optional _config)
--- the entry component is required
cfg.slot_types = {
  ["barraco14"] = {
    {
    {"entry",758.95281982422,-203.49153137207,70.343185424805},
      {"chest",763.826171875,-204.56886291504,70.343124389648, _config = {weight=200}},
      {"wardrobe",762.26171875,-199.57768249512,70.342948913574},
      {"gametable",759.14514160156,-201.34881591797,70.342994689941},
    {"itemtr", _config = itemtr_study,760.70892333984,-203.57539367676,70.343147277832},
      {"itemtr", _config = itemtr_hacker,759.84356689453,-199.94879150391,70.342880249023}
    }
    },
  ["barraco12"] = {
    {
    {"entry",446.61129760742,-1761.0865478516,33.216995239258},
      {"chest",445.34320068359,-1766.5625,33.216846466064, _config = {weight=200}},
      {"wardrobe",450.47177124023,-1764.4068603516,33.216812133789},
      {"gametable",448.01037597656,-1761.1911621094,33.216865539551},
    {"itemtr", _config = itemtr_study, 446.21636962891,-1762.9609375,33.216960906982},
      {"itemtr", _config = itemtr_hacker, 449.39279174805,-1761.7796630859,33.216705322266}
    }
  },
  ["barraco11"] = {
    {
    {"entry",423.59817504883,-1809.5266113281,32.650302886963},
      {"chest",420.42825317383,-1814.0748291016,32.650115966797, _config = {weight=200}},
      {"wardrobe",426.10705566406,-1813.6184082031,32.650085449219},
      {"gametable",424.80712890625,-1809.9133300781,32.650135040283},
    {"itemtr", _config = itemtr_study, 422.31103515625,-1810.8878173828,32.650279998779},
      {"itemtr", _config = itemtr_hacker, 425.71752929688,-1810.6086425781,32.649951934814}
    }
  },
  ["barraco10"] = {
    {
    {"entry",267.37020874023,-1952.5377197266,28.343204498291},
      {"chest",270.83538818359,-1947.9588623047,28.342962265015, _config = {weight=200}},
      {"wardrobe",265.30703735352,-1948.2368164063,28.342962265015},
      {"gametable",266.22906494141,-1951.8996582031,28.34303855896},
    {"itemtr", _config = itemtr_study, 268.19604492188,-1951.0534667969,28.34317779541},
      {"itemtr", _config = itemtr_hacker, 264.97134399414,-1950.5124511719,28.342874526978}
    }
  },
  ["barraco13"] = {
    {
    {"entry",-768.47760009766,613.48352050781,140.33073425293},
      {"chest",-769.51373291016,606.37738037109,140.35647583008, _config = {weight=200}},
      {"wardrobe",-767.05108642578,611.29693603516,140.33076477051},
      {"gametable",-764.17303466797,614.29962158203,136.53060913086},
    {"itemtr", _config = itemtr_study, -756.14038085938,615.23602294922,136.53065490723},
      {"itemtr", _config = itemtr_hacker, -761.95947265625,614.33587646484,136.53060913086}
    }
  },
  ["barraco9"] = {
    {
    {"entry",1447.2883300781,-810.88580322266,112.32314300537},
      {"chest",1443.3333740234,-814.43377685547,112.32317352295, _config = {weight=200}},
      {"wardrobe",1449.9177246094,-814.98889160156,112.3231048584},
      {"gametable",1448.7856445313,-811.52740478516,112.32300567627},
    {"itemtr", _config = itemtr_study, 1446.3872070313,-811.81329345703,112.32316589355}
    }
  },
  ["barraco8"] = {
    {
    {"entry",1369.8107910156,-783.84368896484,70.743957519531},
      {"chest",1364.3503417969,-784.16931152344,70.743797302246, _config = {weight=200}},
      {"wardrobe",1368.5456542969,-788.67028808594,70.743721008301},
      {"gametable",1370.4113769531,-785.36755371094,70.743873596191},
    {"itemtr", _config = itemtr_study, 1368.2432861328,-784.04772949219,70.743957519531},
      {"itemtr", _config = itemtr_hacker, 1370.3139648438,-786.75213623047,70.743644714355}
    }
  },
  ["barraco7"] = {
    {
    {"entry",1392.7066650391,-795.24932861328,71.293434143066},
      {"chest",1387.6540527344,-796.67205810547,71.293434143066, _config = {weight=200}},
      {"wardrobe",1392.8969726563,-800.14764404297,71.29320526123},
      {"gametable",1393.8608398438,-796.44427490234,71.293334960938},
    {"itemtr", _config = itemtr_study, 1391.3310546875,-795.82952880859,71.293411254883}
    }
  },
  ["barraco6"] = {
    {
    {"entry",1342.8813476563,-719.13519287109,70.641624450684},
      {"chest",1348.2680664063,-720.15838623047,70.641555786133, _config = {weight=200}},
      {"wardrobe",1345.0991210938,-715.14508056641,70.641464233398},
      {"gametable",1342.5793457031,-718.04565429688,70.641616821289},
    {"itemtr", _config = itemtr_study, 1344.5301513672,-719.45379638672,70.641632080078}
    }
  },
  ["barraco4"] = {
    {
    {"entry",1305.2862548828,-538.99176025391,74.985137939453},
      {"chest",1310.5626220703,-539.98828125,74.985107421875, _config = {weight=200}},
      {"wardrobe",1307.85546875,-534.64556884766,74.984939575195},
      {"gametable",1305.0905761719,-537.23260498047,74.984985351563},
    {"itemtr", _config = itemtr_study, 1307.1151123047,-538.85174560547,74.985084533691},
      {"itemtr", _config = itemtr_hacker, 1305.4038085938,-535.98272705078,74.984909057617}
    }
  },
  ["barraco3"] = {
    {
   ----favela 3
    {"entry",1315.8626708984,-569.20599365234,75.977935791016},
      {"chest",1310.9030761719,-567.67175292969,75.977935791016, _config = {weight=200}},
      {"wardrobe",1312.6502685547,-572.97448730469,75.977737426758},
      {"gametable",1315.4503173828,-571.01226806641,75.977699279785},
    {"itemtr", _config = itemtr_study, 1371.9038085938,-597.37902832031,78.387535095215},
      {"itemtr", _config = itemtr_hacker, 1315.3850097656,-571.75964355469,75.97770690918}
    }
  },
  ["barraco2"] = {
    {
     ----favela 2
      {"entry",1373.0469970703,-596.42053222656,78.387550354004},
      {"chest",1368.5181884766,-598.61346435547,78.38744354248, _config = {weight=200}},
      {"wardrobe",1373.4571533203,-601.73468017578,78.387344360352},
      {"gametable",1374.4064941406,-598.07141113281,78.387413024902},
    {"itemtr", _config = itemtr_study, 1372.302734375,-597.26483154297,78.387588500977},
      {"itemtr", _config = itemtr_hacker, 1374.6323242188,-599.13421630859,78.387252807617}
    }
  },
  ["barraco1"] = {
    {
  ----favela 1
    {"entry",1279.6340332031,-658.56713867188,70.972923278809},
      {"chest",1278.5155029297,-653.83923339844,70.972877502441, _config = {weight=200}},
      {"wardrobe",1275.9337158203,-658.61749267578,70.972747802734},
      {"gametable",1279.3767089844,-659.68493652344,70.97282409668},
    {"itemtr", _config = itemtr_study, 1279.5935058594,-657.21807861328,70.972946166992},
      {"itemtr", _config = itemtr_hacker, 1278.1821289063,-660.05529785156,70.972709655762}
    }
  },
  ["mansion"] = {
    {
      {"entry",-815.5,178.78350830078,72.153137207031},
      {"chest",-808.51202392578,175.12515258789,76.740737915039, _config = {weight=200}},
      {"wardrobe",-811.91864013672,175.12641906738,76.745376586914},
      {"gametable",-802.62530517578,173.50367736816,72.844650268555},
      {"itemtr", _config = itemtr_study, -811.89361572266,182.51545715332,76.740768432617},
      {"itemtr", _config = itemtr_laboratory, -799.93286132813,187.0225982666,72.605445861816}
    }
  },
  ["Modern_Apt"] = {
    {
      {"entry",-262.89743041992,-713.50500488281,71.032737731934},
      {"chest",-260.3044128418,-710.51483154297,71.03263092041, _config = {weight=200}},
      {"wardrobe",-268.35028076172,-711.14282226563,74.130767822266},
      {"gametable",-261.54336547852,-705.24145507813,69.073661804199},
      {"itemtr", _config = itemtr_study, -271.51849365234,-699.15698242188,74.129493713379},
    {"itemtr", _config = itemtr_laboratory, -277.80133056641,-706.42468261719,71.034538269043}
    }
  },
  ["Beach_Home"] = {
    {
      {"entry",-1151.330078125,-1520.3634033203,10.632718086243},
      {"chest",-1398.7546386719,-1009.4465332031,24.742460250854, _config = {weight=200}},
      {"wardrobe",-1401.8356933594,-1013.7904663086,24.704584121704},
      {"gametable",-1409.3668212891,-1011.7996826172,24.063997268677},
      {"itemtr", _config = itemtr_study, -1402.7980957031,-1011.353515625,24.064046859741}
    }
  },
  ["Cheap_Home"] = {
    {
      {"entry",346.3893737793,-1012.9935302734,-99.196250915527},
      {"chest",351.87979125977,-998.93640136719,-99.19620513916, _config = {weight=200}},
      {"wardrobe",351.22573852539,-993.52227783203,-99.19620513916},
      {"gametable",340.52719116211,-996.14672851563,-99.196235656738},
      {"itemtr", _config = itemtr_study, 345.3010559082,-994.58178710938,-99.196235656738}
    }
  },
  ["mansion2"] = {
    {
      {"entry",7.6293659210205,537.90026855469,176.02813720703},
      {"chest",-11.527637481689,516.53375244141,174.62814331055, _config = {weight=200}},
      {"wardrobe",8.900839805603,528.54754638672,170.63502502441},
      {"gametable",0.80820995569229,534.32055664063,175.34242248535},
      {"itemtr", _config = itemtr_study, 2.0338447093964,526.91583251953,174.62788391113},
      {"itemtr", _config = itemtr_laboratory, 4.887170791626,525.84631347656,170.61726379395}
    }
  },
  ["beach_house"] = {
    {
      {"entry",-1396.5289306641,-1000.8833007813,24.704557418823},
      {"chest",-1147.5123291016,-1513.4490966797,10.632717132568, _config = {weight=200}},
      {"wardrobe",-1144.0876464844,-1515.8283691406,10.632729530334},
      {"gametable",-1157.4553222656,-1522.6977539063,10.632729530334},
      {"itemtr", _config = itemtr_study, -1156.6875,-1517.3475341797,10.632729530334}
    }
  },
  ["beach_bungalo"] = {
    {
      {"entry",1247.0024414063,-2683.8708496094,2.8763480186462},
      {"chest",1243.6141357422,-2668.6169433594,2.8671708106995, _config = {weight=200}},
      {"wardrobe",1252.1770019531,-2678.8491210938,2.8671703338623},
      {"gametable",1240.0080566406,-2679.7204589844,2.8671700954437}
      --{"itemtr", _config = itemtr_study, -1156.6875,-1517.3475341797,10.632729530334}
    }
  },
  ["trevor_trailer"] = {
    {
      {"entry",1972.5347900391,3817.2524414063,33.428737640381},
      {"chest",1972.7764892578,3819.447265625,33.428737640381, _config = {weight=200}},
      {"wardrobe",1969.2116699219,3814.6779785156,33.428745269775},
      {"gametable",1975.8670654297,3821.0249023438,33.44958114624},
      {"itemtr", _config = itemtr_study, 1970.9127197266,3818.9682617188,33.428722381592}
    }
  },
  ["franklin_house"] = {
    {
      {"entry",-13.934011459351,-1438.681640625,31.101552963257},
      {"chest",-16.165374755859,-1430.3123779297,31.101528167725, _config = {weight=200}},
      {"wardrobe",-18.420257568359,-1438.7086181641,31.101554870605},
      {"gametable",-9.8388214111328,-1433.0078125,31.10181427002},
      {"itemtr", _config = itemtr_study, -9.6672973632813,-1439.2152099609,31.101551055908}
    }
  },
  ["Expensive_flat"] = {
    {
      {"entry",-174.25415039063,497.68032836914,137.66606140137},
      {"chest",-170.91767883301,486.65267944336,137.44346618652, _config = {weight=200}},
      {"wardrobe",-167.52639770508,488.09219360352,133.84378051758},
      {"gametable",-165.25064086914,481.94122314453,137.26547241211},
      {"itemtr", _config = itemtr_study, -170.125,491.10211181641,130.04365539551},
    {"itemtr", _config = itemtr_laboratory, -168.01805114746,493.77416992188,137.65361022949}
     }
  },
   ["Rich_flat"] = {
  {
      {"entry",117.25834655762,560.08666992188,184.30490112305},
      {"chest",118.02893829346,548.17034912109,184.09687805176, _config = {weight=200}},
      {"wardrobe",122.19967651367,549.14868164063,180.49728393555},
      {"gametable",123.65795898438,542.46752929688,183.92469787598},
      {"itemtr", _config = itemtr_study, 113.8675994873,569.33721923828,176.69714355469},
    {"itemtr", _config = itemtr_laboratory, 122.04703521729,554.95385742188,184.29711914063}
    }
    },
  ["Normal_flat"] = {
  {
      {"entry",342.23474121094,437.68603515625,149.380859375},
      {"chest",334.65530395508,428.56219482422,145.57086181641, _config = {weight=200}},
      {"wardrobe",-167.52639770508,488.09219360352,133.84378051758},
      {"gametable",1396.9838867188,1132.2958984375,114.33364868164},
      {"itemtr", _config = itemtr_study, 1397.9416503906,1153.2963867188,114.33358001709},
    {"itemtr", _config = itemtr_laboratory, 339.99038696289,430.75555419922,149.38067626953}
    }
    },
  ["Rich_Home"] = {
  {
      {"entry",1400.6745605469,1159.5922851563,114.33366394043},
      {"chest",1399.9816894531,1139.6080322266,114.33364868164, _config = {weight=200}},
      {"wardrobe",1402.2535400391,1135.0444335938,114.33364868164   },
      {"gametable",329.27224731445,424.77600097656,148.99256896973},
      {"itemtr", _config = itemtr_study, 336.78369140625,431.45687866211,141.77076721191},
    {"itemtr", _config = itemtr_laboratory, 1399.5760498047,1147.2416992188,114.33366394043}
    }
    },
  
  ["basic_flat"] = {
    {
      {"entry",-782.171,324.589,223.258},
      {"chest",-773.718078613281,325.144409179688,223.266357421875, _config = {weight=200}},
      {"wardrobe",-760.885437011719,325.457153320313,217.061080932617},
      {"gametable",-755.40185546875,318.263214111328,221.875823974609},
      {"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805},
      {"radio", -755.68768310547,331.09976196289,221.85510253906, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898}
    },
    {
      {"entry",-774.171,333.589,207.621},
      {"chest",-782.118591308594,332.147399902344,207.629608154297, _config = {weight=200}},
      {"wardrobe",-795.118469238281,331.631256103516,201.42431640625},
      {"gametable",-800.763427734375,338.574951171875,206.239105224609},
      {"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543},
      {"radio", -800.40148925781,326.16177368164,206.21821594238, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
    },
    {
      {"entry",-774.171,333.589,159.998},
      {"chest",-782.66015625,332.523284912109,160.010223388672, _config = {weight=200}},
      {"wardrobe",-795.550964355469,332.229614257813,153.804931640625},
      {"gametable",-801.228942871094,339.106231689453,158.619750976563},
      {"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805},
    {"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
    },
    {
      {"entry",-596.689,59.139,108.030},
      {"chest",-604.427001953125,57.0807762145996,108.035743713379, _config = {weight=200}},
      {"wardrobe",-617.180358886719,56.9536590576172,101.830520629883},
      {"gametable",-623.078796386719,63.688045501709,106.645317077637},
      {"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254},
      {"radio", -800.87060546875,326.45428466797,158.59884643555, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
    },
    {
      {"entry",-1451.557,-523.546,69.556},
      {"chest",-1457.28601074219,-529.699523925781,69.565315246582, _config = {weight=200}},
      {"wardrobe",-1467.07995605469,-536.98583984375,63.3601188659668},
      {"gametable",-1476.12658691406,-534.873474121094,68.1748962402344},
      {"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586},
      {"radio", -1468.7071533203,-545.08715820313,68.153968811035, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
    },
    {
      {"entry",-1452.185,-522.640,56.929},
      {"chest",-1457.3740234375,-529.737854003906,56.9376449584961, _config = {weight=200}},
      {"wardrobe",-1467.7158203125,-537.308349609375,50.732494354248},
      {"gametable",-1476.12670898438,-534.895751953125,55.547306060791},
      {"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672},
    {"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
    {"radio", -1468.6722412109,-545.06427001953,55.526348114014, _config = { stations = radio_stations }},
    },
    {
      {"entry",-907.900,-370.608,109.440},
      {"chest",-914.79296875,-375.26416015625,109.448974609375, _config = {weight=200}},
      {"wardrobe",-926.047912597656,-381.470153808594,103.243774414063},
      {"gametable",-934.216979980469,-378.082336425781,108.05859375},
      {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293},
      {"radio", -928.19958496094,-389.09826660156,108.03771972656, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
    },
    {
      {"entry",-921.124,-381.099,85.480},
      {"chest",-915.268737792969,-375.818084716797,85.4891815185547, _config = {weight=200}},
      {"wardrobe",-904.0673828125,-369.910552978516,79.2839508056641},
      {"gametable",-895.890075683594,-373.167846679688,84.0987701416016},
      {"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
      {"radio", -901.92596435547,-362.20422363281,84.077835083008, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
    },
    {
      {"entry",-464.453,-708.617,77.086},
      {"chest",-466.566558837891,-700.528991699219,77.0956268310547, _config = {weight=200}},
      {"wardrobe",-466.892852783203,-687.88720703125,70.8903503417969},
      {"gametable",-459.870513916016,-682.054565429688,75.7051773071289},
      {"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
      {"radio", -472.61911010742,-682.53247070313,75.684257507324, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
    },
    {
      {"entry",-470.647,-689.459,53.402},
      {"chest",-469.077453613281,-697.664672851563,53.4144515991211, _config = {weight=200}},
      {"wardrobe",-468.939910888672,-710.398986816406,47.2093048095703},
      {"gametable",-475.543884277344,-716.226867675781,52.0241050720215},
      {"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
      {"radio", -463.13302612305,-715.83905029297,52.003196716309, _config = { stations = radio_stations }},
    {"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
    }
  },
  ["other_flat"] = {
    {
      {"entry",-784.363,323.792,211.996},
      {"chest",-766.744384765625,328.375,211.396545410156, _config = {weight=500}},
      {"wardrobe",-793.502136230469,326.861846923828,210.796630859375},
      {"gametable",-781.973083496094,338.788482666016,211.231979370117},
      {"radio", -786.3671875,337.87127685547,211.19708251953, _config = { stations = radio_stations }},
      {"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
      {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
      {"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
    },
    {
      {"entry",-603.997,58.954,98.200},
      {"chest",-621.323669433594,54.2074241638184,97.5995330810547, _config = {weight=500}},
      {"wardrobe",-594.668823242188,55.5750961303711,96.9996185302734},
      {"gametable",-606.140441894531,43.8849754333496,97.4350128173828},
      {"radio", -601.69189453125,44.624042510986,97.400062561035, _config = { stations = radio_stations }},
      {"itemtr", _config = itemtr_study, -608.968322753906,49.1769981384277,97.4001312255859},
      {"itemtr", _config = itemtr_laboratory, -624.831909179688,55.5965461730957,97.5995635986328},
      {"itemtr", _config = itemtr_hacker, -625.2353515625,50.4472694396973,97.5995254516602},
    },
    {
      {"entry",-1453.013,-539.629,74.044},
      {"chest",-1466.57763671875,-528.339294433594,73.4436492919922, _config = {weight=500}},
      {"wardrobe",-1449.85034179688,-549.231323242188,72.8437194824219},
      {"gametable",-1466.37182617188,-546.663757324219,73.279052734375},
      {"itemtr", _config = itemtr_study, -1463.84411621094,-541.1962890625,73.2442169189453},
      {"radio", -1463.17578125,-549.80786132813,73.244178771973, _config = { stations = radio_stations }},
      {"itemtr", _config = itemtr_laboratory, -1467.62377929688,-524.550842285156,73.4436492919922},
      {"itemtr", _config = itemtr_hacker, -1472.04296875,-527.374267578125,73.4436416625977},
    },
    {
      {"entry",-912.547,-364.706,114.274},
      {"chest",-926.693176269531,-377.596130371094,113.674102783203, _config = {weight=500}},
      {"wardrobe",-903.66650390625,-364.023223876953,113.074157714844},
      {"gametable",-908.407165527344,-379.825714111328,113.509590148926},
      {"radio", -904.83923339844,-377.26748657227,113.47455596924, _config = { stations = radio_stations }},
      {"itemtr", _config = itemtr_study, -913.553588867188,-376.692016601563,113.474617004395},
      {"itemtr", _config = itemtr_laboratory, -930.571899414063,-378.051239013672,113.674072265625},
      {"itemtr", _config = itemtr_hacker, -928.425598144531,-382.820159912109,113.67407989502},
    }
  },
  ["plantation_flat"] = {
    {
      {"entry",1393.0272216797,3612.8176269531,34.980930328369},
      {"chest",1396.7132568359,3604.9682617188,38.941928863525, _config = {weight=500}},
      {"wardrobe",1395.5855712891,3616.0346679688,38.941928863525},
      {"gametable",1394.2917480469,3610.3530273438,38.941928863525},
      {"itemtr", _config = itemtr_laboratory, 1391.9298095703,3603.7819824219,38.941928863525}
    }
  },
  ["rail_flat"] = {
    {
      {"entry",658.84442138672,-709.59503173828,38.257362365723},
      {"chest",658.15179443359,-727.44494628906,37.337562561035, _config = {weight=500}},
      {"wardrobe",664.96478271484,-726.07250976563,37.351558685303},
      {"gametable",670.20166015625,-704.70776367188,37.341278076172},
    }
  },
  ["plantation_flat_2"] = {
    {
      {"entry",2453.6201171875,4970.3422851563,46.810604095459},
      {"chest",2432.1650390625,4963.0649414063,46.936447143555, _config = {weight=500}},
      {"wardrobe",2442.6887207031,4971.50390625,46.810600280762},
      {"gametable",2456.3798828125,4982.4672851563,46.810009002686},
      {"itemtr", _config = itemtr_laboratory, 2433.2919921875,4968.62109375,42.347625732422}
    }
  }
}

-- define home clusters
cfg.homes = {
  ["barraco do lider 4"] = {
    slot = "barraco14",
    entry_point = {761.92340087891,-207.39292907715,66.114540100098},
    buy_price = 20000000,
    sell_price = 100,
    max = 5,
    blipid=374,
    blipcolor=2
  },
  ["barraco 12"] = {
    slot = "barraco12",
    entry_point = {433.26638793945,-1769.3093261719,28.9996509552},
    buy_price = 200000,
    sell_price = 150000,
    max = 2                            
  },
  ["barraco do lider 1"] = {
    slot = "barraco11",
    entry_point = {418.39028930664,-1811.1170654297,28.526830673218},
    buy_price = 20000000,
    sell_price = 100,
    max = 5,
    blipid=374,
    blipcolor=2
  },
  ["barraco 10"] = {
    slot = "barraco10",
    entry_point = {272.04278564453,-1951.01171875,24.146371841431},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["barraco do lider 3"] = {
    slot = "barraco13",
    entry_point = {-789.33831787109,599.568359375,127.3191986084},
    buy_price = 20000000,
    sell_price = 100,
    max = 5,
  blipid=374,
    blipcolor=2
  },
  ["barraco do lider"] = {
    slot = "barraco9",
    entry_point = {1442.4128417969,-810.66815185547,102.52326202393},
    buy_price = 20000000,
    sell_price = 100,
    max = 5,
  blipid=374,
    blipcolor=2
  },
  ["barraco 8"] = {
    slot = "barraco8",
    entry_point = {1365.4982910156,-782.17126464844,67.127410888672},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["barraco 7"] = {
    slot = "barraco7",
    entry_point = {1388.0170898438,-794.69793701172,67.429466247559},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["barraco 6"] = {
    slot = "barraco6",
    entry_point = {1346.5207519531,-722.21496582031,66.977333068848},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["barraco 4"] = {
    slot = "barraco4",
    entry_point = {1309.1112060547,-542.18518066406,71.268539428711},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["barraco 3"] = {
    slot = "barraco3",
    entry_point = {1312.6828613281,-565.75512695313,72.066627502441},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["barraco 2"] = {
    slot = "barraco2",
    entry_point = {1368.4372558594,-595.38323974609,74.337738037109},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["barraco 1"] = {
    slot = "barraco1",
    entry_point = {1281.9010009766,-653.41528320313,67.487602233887},
    buy_price = 200000,
    sell_price = 150000,
    max = 2
  },
  ["Rundown Trailor"] = {
    slot = "trevor_trailer",
    entry_point = {1980.0181884766,3816.54296875,32.275169372559},
    buy_price = 150000,
    sell_price = 100000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Cheap Home"] = {
    slot = "Cheap_Home",
    entry_point = {500.54632568359,-1697.3969726563,29.789241790771},
    buy_price = 350000,
    sell_price = 300000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Rail Flat"] = {
    slot = "rail_flat",
    entry_point = {673.96185302734,-724.09637451172,30.730808258057},
    buy_price = 350000,
    sell_price = 300000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Lowside House'"] = {
    slot = "franklin_house",
    entry_point = {-13.843012809753,-1444.6134033203,30.646482467651},
    buy_price = 350000,
    sell_price = 300000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Beach Bungalo"] = {
    slot = "beach_bungalo",
    entry_point = {1245.6123046875,-2686.2346191406,2.4227623939514},
    buy_price = 350000,
    sell_price = 300000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Beach House"] = {
    slot = "beach_house",
    entry_point = {-1384.8225097656,-975.95910644531,8.9470081329346},
    buy_price = 350000,
    sell_price = 300000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Beach Home"] = {
    slot = "Beach_Home",
    entry_point = {-1149.7276611328,-1522.0582275391,10.628049850464},
    buy_price = 350000,
    sell_price = 300000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Basic Housing 1"] = {
    slot = "basic_flat",
    entry_point = {-635.665,44.155,42.697},
    buy_price = 500000,
    sell_price = 400000,
    max = 5,
    blipid=374,
    blipcolor=2
  },
  ["Basic Housing 2"] = {
    slot = "basic_flat",
    entry_point = {-1446.769,-538.531,34.740},
    buy_price = 500000,
    sell_price = 400000,
    max = 5,
    blipid=374,
    blipcolor=2
  },
  ["Storefront Apartment"] = {
    slot = "plantation_flat",
    entry_point = {1395.3175048828,3623.8327636719,35.012145996094},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Rich Housing"] = {
    slot = "other_flat",
    entry_point = {-770.921,312.537,85.698},
    buy_price = 750000,
    sell_price = 650000,
    max = 4,
    blipid=374,
    blipcolor=2
  },
  ["Modern Apt"] = {
    slot = "Modern_Apt",
    entry_point = {-271.54443359375,-704.84051513672,38.276908874512},
    buy_price = 1000000,
    sell_price = 900000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Country Ranch'"] = {
    slot = "plantation_flat_2",
    entry_point = {2452.4807128906,4961.3364257813,45.502922058105},
    buy_price = 2000000,
    sell_price = 1800000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Normal flat"] = {
    slot = "Normal_flat",
    entry_point = {-109.87996673584,502.23614501953,143.47735595703},
    buy_price = 2500000,
    sell_price = 2250000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Rich flat"] = {
    slot = "Rich_flat",
    entry_point = {-175.16819763184,502.37973022461,137.42015075684},
    buy_price = 2500000,
    sell_price = 2250000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Expensive flat"] = {
    slot = "Expensive_flat",
    entry_point = {-66.644836425781,490.34689331055,144.69012451172},
    buy_price = 2500000,
    sell_price = 2250000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Rich Home"] = {
    slot = "Rich_Home",
    entry_point = {1394.4956054688,1152.6457519531,114.41397857666},
    buy_price = 500000,
    sell_price = 450000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Mountainside Mansion"] = {
    slot = "mansion2",
    entry_point = {8.5883893966675,541.60162353516,176.02816772461},
    buy_price = 5000000,
    sell_price = 4000000,
    max = 1,
    blipid=374,
    blipcolor=5
  },
  ["Downtown Mansion"] = {
    slot = "mansion",
    entry_point = {-818.27014160156,177.49227905273,72.222503662109},
    buy_price = 6000000,
    sell_price = 5000000,
    max = 1,
    blipid=374,
    blipcolor=5
  }
}

return cfg
