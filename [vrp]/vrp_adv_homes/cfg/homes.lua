
local cfg = {}

cfg.lang = "en"

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
  ["mansion"] = {
    {
      {"entry",-815.5,178.78350830078,72.153137207031},
      {"chest",-808.51202392578,175.12515258789,76.740737915039, _config = {weight=300}},
      {"wardrobe",-811.91864013672,175.12641906738,76.745376586914},
      {"itemtr", _config = itemtr_hacker, -811.89361572266,182.51545715332,76.740768432617}
    }
  },
  ["Modern_Apt"] = {
    {
      {"entry",-262.89743041992,-713.50500488281,71.032737731934},
      {"chest",-260.3044128418,-710.51483154297,71.03263092041, _config = {weight=200}},
      {"wardrobe",-268.35028076172,-711.14282226563,74.130767822266},
      {"itemtr", _config = itemtr_hacker, -271.51849365234,-699.15698242188,74.129493713379}
    }
  },
  ["Beach_Home"] = {
    {
      {"entry",-1151.330078125,-1520.3634033203,10.632718086243},
      {"chest",-1153.2681884766,-1516.7121582031,10.632726669312, _config = {weight=200}},
      {"wardrobe",-1401.8356933594,-1013.7904663086,24.704584121704},
      {"itemtr", _config = itemtr_hacker, -1402.7980957031,-1011.353515625,24.064046859741}
    }
  },
  ["Cheap_Home"] = {
    {
      {"entry",346.3893737793,-1012.9935302734,-99.196250915527},
      {"chest",351.87979125977,-998.93640136719,-99.19620513916, _config = {weight=200}},
      {"wardrobe",351.22573852539,-993.52227783203,-99.19620513916},
      {"itemtr", _config = itemtr_hacker, 345.3010559082,-994.58178710938,-99.196235656738}
    }
  },
  ["mansion2"] = {
    {
      {"entry",7.6293659210205,537.90026855469,176.02813720703},
      {"chest",-11.527637481689,516.53375244141,174.62814331055, _config = {weight=200}},
      {"wardrobe",8.900839805603,528.54754638672,170.63502502441},
      {"itemtr", _config = itemtr_hacker, 2.0338447093964,526.91583251953,174.62788391113}
    }
  },
  ["galpao01"] = {
    {
      {"entry",998.19744873047,-3200.5280761719,-36.393589019775},
      {"chest",998.46075439453,-3200.01953125,-38.993125915527, _config = {weight=2000}},
      {"itemtr", _config = itemtr_hacker, 1016.8239135742,-3199.6379394531,-38.993183135986}
    }
  },
  ["galpao02"] = {
    {
      {"entry",1065.3881835938,-3183.4870605469,-39.163551330566},
      {"chest",1064.1879882813,-3204.2919921875,-39.151103973389, _config = {weight=2000}},
      {"itemtr", _config = itemtr_hacker, 1050.4033203125,-3199.1352539063,-39.083980560303}
    }
  },
  ["galpao03"] = {
    {
      {"entry",1088.7662353516,-3188.7243652344,-38.993473052979},
      {"chest",1097.4611816406,-3192.9125976563,-38.993469238281, _config = {weight=2000}},
      {"itemtr", _config = itemtr_hacker, 1095.7414550781,-3199.2829589844,-38.993469238281}
    }
  },
  ["galpao04"] = {
    {
      {"entry",227.90110778809,-1006.2125854492,-98.999961853027},
      {"chest",235.60377502441,-979.43518066406,-98.999961853027, _config = {weight=2000}},
      {"itemtr", _config = itemtr_hacker, 229.61981201172,-975.66973876953,-98.999961853027}
    }
  },
  ["galpao05"] = {
    {
      {"entry",1048.4635009766,-3097.1291503906,-38.999942779541},
      {"chest",1070.8765869141,-3107.90234375,-38.999950408936, _config = {weight=2000}},
      {"itemtr", _config = itemtr_hacker, 1061.1209716797,-3102.5942382813,-38.999950408936}
    }
  },
  ["galpao06"] = {
    {
      {"entry",992.89654541016,-3097.8217773438,-38.995845794678},
      {"chest",998.43859863281,-3111.89453125,-38.999881744385, _config = {weight=2000}},
      {"itemtr", _config = itemtr_hacker, 999.65173339844,-3092.6164550781,-38.777736663818}
    }
  },
  ["luxo2"] = {
    {
      {"entry",-571.91589355469,661.48449707031,145.83984375},
      {"chest",-574.12860107422,663.90490722656,138.22096252441, _config = {weight=200}},
      {"wardrobe",-571.09191894531,649.60668945313,142.0320892334},
      {"itemtr", _config = itemtr_hacker, -571.84674072266,669.15313720703,138.23193359375}
    }
  },
  ["luxo3"] = {
    {
      {"entry",346.60430908203,-1012.9605712891,-99.196189880371},
      {"chest",351.56909179688,-999.18450927734,-99.196197509766, _config = {weight=200}},
      {"wardrobe",-350.13687133789,-993.72058105469,-99.196197509766},
      {"itemtr", _config = itemtr_hacker, 340.32015991211,-1003.3104858398,-99.196235656738}
    }
  },
  ["luxo4"] = {
    {
      {"entry",346.60430908203,-1012.9605712891,-99.196189880371},
      {"chest",351.56909179688,-999.18450927734,-99.196197509766, _config = {weight=200}},
      {"wardrobe",-350.13687133789,-993.72058105469,-99.196197509766},
      {"itemtr", _config = itemtr_hacker, 340.32015991211,-1003.3104858398,-99.196235656738}
    }
  },
  ["luxo"] = {
    {
      {"entry",-78.390701293945,-831.73095703125,243.38581848145},
      {"chest",-81.728096008301,-804.15484619141,243.39024353027, _config = {weight=200}},
      {"wardrobe",-78.137550354004,-811.18725585938,243.3860168457},
      {"itemtr", _config = itemtr_hacker, -59.581104278564,-809.34252929688,243.38827514648}
    }
  },
  ["beach_house"] = {
    {
      {"entry",-1396.5289306641,-1000.8833007813,24.704557418823},
      {"chest",-1147.5123291016,-1513.4490966797,10.632717132568, _config = {weight=200}},
      {"wardrobe",-1144.0876464844,-1515.8283691406,10.632729530334},
      {"itemtr", _config = itemtr_hacker, -1156.6875,-1517.3475341797,10.632729530334}
    }
  },
  ["beach_bungalo"] = {
    {
      {"entry",1247.0024414063,-2683.8708496094,2.8763480186462},
      {"chest",1243.6141357422,-2668.6169433594,2.8671708106995, _config = {weight=200}},
      {"wardrobe",1252.1770019531,-2678.8491210938,2.8671703338623},
      {"itemtr", _config = itemtr_hacker, -1156.6875,-1517.3475341797,10.632729530334}
    }
  },
  ["trevor_trailer"] = {
    {
      {"entry",1972.5347900391,3817.2524414063,33.428737640381},
      {"chest",1972.7764892578,3819.447265625,33.428737640381, _config = {weight=200}},
      {"wardrobe",1969.2116699219,3814.6779785156,33.428745269775},
      {"itemtr", _config = itemtr_hacker, 1970.9127197266,3818.9682617188,33.428722381592}
    }
  },
  ["franklin_house"] = {
    {
      {"entry",-13.934011459351,-1438.681640625,31.101552963257},
      {"chest",-16.165374755859,-1430.3123779297,31.101528167725, _config = {weight=200}},
      {"wardrobe",-18.420257568359,-1438.7086181641,31.101554870605},
      {"itemtr", _config = itemtr_hacker, -9.6672973632813,-1439.2152099609,31.101551055908}
    }
  },
  ["Expensive_flat"] = {
    {
      {"entry",-174.25415039063,497.68032836914,137.66606140137},
      {"chest",-170.91767883301,486.65267944336,137.44346618652, _config = {weight=200}},
      {"wardrobe",-167.52639770508,488.09219360352,133.84378051758},
      {"itemtr", _config = itemtr_hacker, -170.125,491.10211181641,130.04365539551}
     }
	},
   ["Rich_flat"] = {
	{
      {"entry",117.25834655762,560.08666992188,184.30490112305},
      {"chest",118.02893829346,548.17034912109,184.09687805176, _config = {weight=200}},
      {"wardrobe",122.19967651367,549.14868164063,180.49728393555},
      {"itemtr", _config = itemtr_hacker, 113.8675994873,569.33721923828,176.69714355469}
	  }
    },
	["Normal_flat"] = {
	{
      {"entry",342.23474121094,437.68603515625,149.380859375},
      {"chest",334.65530395508,428.56219482422,145.57086181641, _config = {weight=200}},
      {"wardrobe",-167.52639770508,488.09219360352,133.84378051758},
      {"itemtr", _config = itemtr_hacker, 1397.9416503906,1153.2963867188,114.33358001709}
	  }
    },
	["Rich_Home"] = {
	{
      {"entry",1400.6745605469,1159.5922851563,114.33366394043},
      {"chest",1399.9816894531,1139.6080322266,114.33364868164, _config = {weight=200}},
      {"wardrobe",1402.2535400391,1135.0444335938,114.33364868164},
      {"itemtr", _config = itemtr_hacker, 336.78369140625,431.45687866211,141.77076721191}
	  }
    },
	
  ["basic_flat"] = {
    {
      {"entry",-782.171,324.589,223.258},
      {"chest",-773.718078613281,325.144409179688,223.266357421875, _config = {weight=200}},
      {"wardrobe",-760.885437011719,325.457153320313,217.061080932617},
      {"itemtr", _config = itemtr_hacker, -758.670104980469,315.048156738281,221.854904174805}
    },
    {
      {"entry",-774.171,333.589,207.621},
      {"chest",-782.118591308594,332.147399902344,207.629608154297, _config = {weight=200}},
      {"wardrobe",-795.118469238281,331.631256103516,201.42431640625},
      {"itemtr", _config = itemtr_hacker, -797.283447265625,342.134338378906,206.21842956543}
    },
    {
      {"entry",-774.171,333.589,159.998},
      {"chest",-782.66015625,332.523284912109,160.010223388672, _config = {weight=200}},
      {"wardrobe",-795.550964355469,332.229614257813,153.804931640625},
      {"itemtr", _config = itemtr_hacker, -797.896728515625,342.543273925781,158.599044799805}
    },
    {
      {"entry",-596.689,59.139,108.030},
      {"chest",-604.427001953125,57.0807762145996,108.035743713379, _config = {weight=200}},
      {"wardrobe",-617.180358886719,56.9536590576172,101.830520629883},
      {"itemtr", _config = itemtr_hacker, -619.724853515625,67.1367950439453,106.624366760254}
    },
    {
      {"entry",-1451.557,-523.546,69.556},
      {"chest",-1457.28601074219,-529.699523925781,69.565315246582, _config = {weight=200}},
      {"wardrobe",-1467.07995605469,-536.98583984375,63.3601188659668},
      {"itemtr", _config = itemtr_hacker, -1475.36840820313,-530.117126464844,68.1540756225586}
    },
    {
      {"entry",-1452.185,-522.640,56.929},
      {"chest",-1457.3740234375,-529.737854003906,56.9376449584961, _config = {weight=200}},
      {"wardrobe",-1467.7158203125,-537.308349609375,50.732494354248},
      {"itemtr", _config = itemtr_hacker, -1475.39453125,-530.135192871094,55.5264129638672}
    },
    {
      {"entry",-907.900,-370.608,109.440},
      {"chest",-914.79296875,-375.26416015625,109.448974609375, _config = {weight=200}},
      {"wardrobe",-926.047912597656,-381.470153808594,103.243774414063},
      {"itemtr", _config = itemtr_hacker, -932.810302734375,-373.413330078125,108.03776550293}
    },
    {
      {"entry",-921.124,-381.099,85.480},
      {"chest",-915.268737792969,-375.818084716797,85.4891815185547, _config = {weight=200}},
      {"wardrobe",-904.0673828125,-369.910552978516,79.2839508056641},
      {"itemtr", _config = itemtr_hacker, -897.224792480469,-377.828887939453,84.0779266357422}
    },
    {
      {"entry",-464.453,-708.617,77.086},
      {"chest",-466.566558837891,-700.528991699219,77.0956268310547, _config = {weight=200}},
      {"wardrobe",-466.892852783203,-687.88720703125,70.8903503417969},
      {"itemtr", _config = itemtr_hacker, -456.510467529297,-685.274841308594,75.6842498779297}
    },
    {
      {"entry",-470.647,-689.459,53.402},
      {"chest",-469.077453613281,-697.664672851563,53.4144515991211, _config = {weight=200}},
      {"wardrobe",-468.939910888672,-710.398986816406,47.2093048095703},
      {"itemtr", _config = itemtr_hacker, -479.113037109375,-712.874938964844,52.0032043457031}
    }
  },
  ["other_flat"] = {
    {
      {"entry",-784.363,323.792,211.996},
      {"chest",-766.744384765625,328.375,211.396545410156, _config = {weight=250}},
      {"wardrobe",-793.502136230469,326.861846923828,210.796630859375},
      {"itemtr", _config = itemtr_hacker, -778.560241699219,333.439453125,211.197128295898},
    },
    {
      {"entry",-603.997,58.954,98.200},
      {"chest",-621.323669433594,54.2074241638184,97.5995330810547, _config = {weight=250}},
      {"wardrobe",-594.668823242188,55.5750961303711,96.9996185302734},
      {"itemtr", _config = itemtr_hacker, -608.968322753906,49.1769981384277,97.4001312255859}
    },
    {
      {"entry",-1453.013,-539.629,74.044},
      {"chest",-1466.57763671875,-528.339294433594,73.4436492919922, _config = {weight=250}},
      {"wardrobe",-1449.85034179688,-549.231323242188,72.8437194824219},
      {"itemtr", _config = itemtr_hacker, -1463.84411621094,-541.1962890625,73.2442169189453}
    },
    {
      {"entry",-912.547,-364.706,114.274},
      {"chest",-926.693176269531,-377.596130371094,113.674102783203, _config = {weight=250}},
      {"wardrobe",-903.66650390625,-364.023223876953,113.074157714844},
      {"itemtr", _config = itemtr_hacker, -913.553588867188,-376.692016601563,113.474617004395}
    }
  },
  ["plantation_flat"] = {
    {
      {"entry",1393.0272216797,3612.8176269531,34.980930328369},
      {"chest",1396.7132568359,3604.9682617188,38.941928863525, _config = {weight=250}},
      {"wardrobe",1395.5855712891,3616.0346679688,38.941928863525},
      {"itemtr", _config = itemtr_hacker, 1391.9298095703,3603.7819824219,38.941928863525}
    }
  },
  ["rail_flat"] = {
    {
      {"entry",658.84442138672,-709.59503173828,38.257362365723},
      {"chest",658.15179443359,-727.44494628906,37.337562561035, _config = {weight=250}},
      {"wardrobe",664.96478271484,-726.07250976563,37.351558685303},
      {"gametable",670.20166015625,-704.70776367188,37.341278076172}
    }
  },
  ["helipa1"] = {
    {
      {"entry",1312.1070556641,-565.22143554688,75.990356445313},
      {"chest",1315.4688720703,-571.63323974609,75.977691650391, _config = {weight=400}},
      {"wardrobe",1312.5299072266,-573.01727294922,75.977729797363}
    }
  },
  ["helipa2"] = {
    {
      {"entry",1368.3276367188,-595.79083251953,78.399940490723},
      {"chest",1374.5205078125,-598.24682617188,78.387336730957, _config = {weight=400}},
      {"wardrobe",1373.5659179688,-601.80688476563,78.387382507324}
    }
  },
  ["helipa3"] = {
    {
      {"entry",1304.7509765625,-541.36968994141,74.997619628906},
      {"chest",1310.0480957031,-540.42218017578,74.985122680664, _config = {weight=400}},
      {"wardrobe",1307.587890625,-535.1689453125,74.984893798828}
    }
  },
  ["helipa4"] = {
    {
      {"entry",1336.9595947266,-742.55078125,70.708213806152},
      {"chest",1341.2055664063,-747.79113769531,70.695526123047, _config = {weight=400}},
      {"wardrobe",1338.69921875,-750.18768310547,70.695487976074}
    }
  },
  ["helipa5"] = {
    {
      {"entry",1371.8442382813,-757.12426757813,70.931694030762},
      {"chest",1377.0377197266,-760.56274414063,70.919052124023, _config = {weight=400}},
      {"wardrobe",1375.1597900391,-763.50531005859,70.919067382813}
    }
  },
  ["helipa6"] = {
    {
      {"entry",1346.7666015625,-722.5517578125,70.654090881348},
      {"chest",1342.7365722656,-717.40863037109,70.641487121582, _config = {weight=400}},
      {"wardrobe",1345.2139892578,-715.46612548828,70.641471862793}
    }
  },
  ["helipa7"] = {
    {
      {"entry",1315.5122070313,-712.62963867188,68.98828125},
      {"chest",1311.9702148438,-706.74261474609,68.975601196289, _config = {weight=400}},
      {"wardrobe",1315.0495605469,-704.90600585938,68.975563049316}
    }
  },
  ["helipa8"] = {
    {
      {"entry",1132.7198486328,-675.56848144531,60.551704406738},
      {"chest",1137.0059814453,-679.11499023438,60.539207458496, _config = {weight=400}},
      {"wardrobe",1139.9234619141,-674.42425537109,60.539047241211}
    }
  },
  ["helipa9"] = {
    {
      {"entry",1283.3017578125,-657.55743408203,70.985458374023},
      {"chest",1279.0667724609,-654.59899902344,70.97290802002, _config = {weight=400}},
      {"wardrobe",1276.5604248047,-658.85516357422,70.972694396973}
    }
  },
  ["helipa10"] = {
    {
      {"entry",1369.794921875,-781.12316894531,70.756462097168},
      {"chest",1366.4914550781,-784.05773925781,70.743949890137, _config = {weight=400}},
      {"wardrobe",1368.9227294922,-788.20239257813,70.743743896484}
    }
  },
  ["helipa11"] = {
    {
      {"entry",1391.8289794922,-792.56402587891,71.305931091309},
      {"chest",1389.1472167969,-796.6474609375,71.29337310791, _config = {weight=400}},
      {"wardrobe",1393.1724853516,-798.90600585938,71.293144226074}
    }
  },
  ["helipa12"] = {
    {
      {"entry",1416.5018310547,-776.43896484375,70.408332824707},
      {"chest",1417.2989501953,-780.29321289063,70.395774841309, _config = {weight=400}},
      {"wardrobe",1420.7163085938,-781.50708007813,70.395545959473}
    }
  },
  ["helipa13"] = {
    {
      {"entry",1080.2529296875,-693.72686767578,61.860473632813},
      {"chest",1081.4672851563,-688.62933349609,61.848049163818, _config = {weight=450}},
      {"wardrobe",1076.2067871094,-688.10333251953,61.847843170166}
    }
  },
  ["clube"] = {
    {
      {"entry",1315.5122070313,-712.62963867188,68.98828125},
      {"chest",1111.9454345703,-3150.529296875,-37.518589019775, _config = {weight=450}},
      {"wardrobe",1119.2338867188,-3161.5891113281,-36.870483398438},
      {"gametable",1123.9592285156,-3145.7092285156,-37.062767028809}
    }
  },
  ["plantation_flat_2"] = {
    {
      {"entry",2453.3798828125,4970.5024414063,46.810581207275},
      {"chest",2432.1650390625,4963.0649414063,46.936447143555, _config = {weight=600}},
      {"wardrobe",2442.6887207031,4971.50390625,46.810600280762},
      {"itemtr", _config = itemtr_hacker, 2433.2919921875,4968.62109375,42.347625732422}
    }
  }
}

-- define home clusters
cfg.homes = {
  ["Trailer"] = {
    slot = "trevor_trailer",
    entry_point = {1980.0181884766,3816.54296875,32.275169372559},
    buy_price = 185000,
    sell_price = 176250,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Clube"] = {
    slot = "clube",
    entry_point = {-379.53262329102,6062.2387695313,31.500129699707},
    buy_price = 3000000,
    sell_price = 2000000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Casa Deposito"] = {
    slot = "rail_flat",
    entry_point = {673.96185302734,-724.09637451172,30.730808258057},
    buy_price = 98000,
    sell_price = 70000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Casa #04"] = {
    slot = "beach_house",
    entry_point = {-1384.8225097656,-975.95910644531,8.9470081329346},
    buy_price = 88000,
    sell_price = 60000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Casa #05"] = {
    slot = "Beach_Home",
    entry_point = {-1149.7276611328,-1522.0582275391,10.628049850464},
    buy_price = 88000,
    sell_price = 60000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Apartamento Basico #01"] = {
    slot = "basic_flat",
    entry_point = {-635.665,44.155,42.697},
    buy_price = 500000,
    sell_price = 400000,
    max = 5,
    blipid=374,
    blipcolor=2
  },
  ["Apartamento Basico #02"] = {
    slot = "basic_flat",
    entry_point = {-1446.769,-538.531,34.740},
    buy_price = 500000,
    sell_price = 400000,
    max = 5,
    blipid=374,
    blipcolor=2
  },
  ["Apartamento de Luxo #01"] = {
    slot = "other_flat",
    entry_point = {-770.921,312.537,85.698},
    buy_price = 1000000,
    sell_price = 800000,
    max = 4,
    blipid=374,
    blipcolor=2
  },
  ["Fazenda"] = {
    slot = "plantation_flat_2",
    entry_point = {2452.4807128906,4961.3364257813,45.502922058105},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Casa #02"] = {
    slot = "Normal_flat",
    entry_point = {-109.87996673584,502.23614501953,143.47735595703},
    buy_price = 88000,
    sell_price = 60000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Casa #01"] = {
    slot = "Rich_flat",
    entry_point = {-175.16819763184,502.37973022461,137.42015075684},
    buy_price = 88000,
    sell_price = 60000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Casa #03"] = {
    slot = "Expensive_flat",
    entry_point = {-66.644836425781,490.34689331055,144.69012451172},
    buy_price = 88000,
    sell_price = 60000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Fazenda"] = {
    slot = "Rich_Home",
    entry_point = {1394.4956054688,1152.6457519531,114.41397857666},
    buy_price = 2000000,
    sell_price = 1000000,
    max = 1,
    blipid=374,
    blipcolor=2
  },
  ["Galpao 01"] = {
    slot = "galpao01",
    entry_point = {1454.4614257813,-1651.6026611328,66.99479675293},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 02"] = {
    slot = "galpao02",
    entry_point = {2846.6674804688,4449.4375,48.518280029297},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 03"] = {
    slot = "galpao03",
    entry_point = {-1461.5863037109,-382.83508300781,38.745960235596},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 04"] = {
    slot = "galpao04",
    entry_point = {939.76989746094,-1490.833984375,30.092649459839},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 05"] = {
    slot = "galpao05",
    entry_point = {759.47930908203,-909.537109375,25.280485153198},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 06"] = {
    slot = "galpao06",
    entry_point = {714.00598144531,-716.97760009766,26.128541946411},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 07"] = {
    slot = "galpao01",
    entry_point = {53.095752716064,6487.84765625,31.426488876343},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 08"] = { 
    slot = "galpao02",
    entry_point = {-174.7043762207,217.1598815918,89.504409790039},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 09"] = {
    slot = "galpao03",
    entry_point = {670.56146240234,-2667.63671875,6.081184387207},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 10"] = { 
    slot = "galpao01",
    entry_point = {-984.54089355469,-2227.4636230469,8.8616952896118},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 11"] = { 
    slot = "galpao02",
    entry_point = {968.03076171875,-1810.7879638672,31.213417053223},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Galpao 12"] = { 
    slot = "galpao03",
    entry_point = {387.69692993164,3585.9638671875,33.2922706604},
    buy_price = 500000,
    sell_price = 400000,
    max = 1,
    blipid=374,
    blipcolor=55
  },
  ["Maior Casa De Luxo"] = {
    slot = "luxo2",
    entry_point = {-560.21624755859,662.82043457031,145.48292541504},
    buy_price = 2000000,
    sell_price = 100000,
    max = 1,
    blipid=374,
    blipcolor=5
  },
  ["Casa Na Praia 01"] = {
    slot = "luxo3",
    entry_point = {-1350.9715576172,-1128.6264648438,4.1570029258728},
    buy_price = 1000000,
    sell_price = 800000,
    max = 1,
    blipid=374,
    blipcolor=5
  },
  ["Casa Na Praia 02"] = {
    slot = "luxo4",
    entry_point = {-1335.6019287109,-1146.3084716797,6.7314052581787},
    buy_price = 1000000,
    sell_price = 800000,
    max = 1,
    blipid=374,
    blipcolor=5
  },
  ["Apartamento De Luxo"] = {
    slot = "luxo",
    entry_point = {-84.218826293945,-823.48309326172,36.028102874756},
    buy_price = 1000000,
    sell_price = 800000,
    max = 5,
    blipid=374,
    blipcolor=5
  },
  ["Mansão #02"] = {
    slot = "mansion2",
    entry_point = {8.5883893966675,541.60162353516,176.02816772461},
    buy_price = 1000000,
    sell_price = 800000,
    max = 1,
    blipid=374,
    blipcolor=5
  },
  ["Mansão #01"] = {
    slot = "mansion",
    entry_point = {-818.27014160156,177.49227905273,72.222503662109},
    buy_price = 1000000,
    sell_price = 800000,
    max = 1,
    blipid=374,
    blipcolor=5
  }
}

return cfg
