
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  { -- CURRAL DE VACAS
    name="Curral de vacas", -- menu name
    permissions = {"harvest.vacas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=1230.6618652344,y=1855.7913818359,z=79.234764099121, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Ordenhar"] = { -- action name
        description="Ordenhar Leite com o Balde.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["balde"] = 1
      },
        products={ -- items given per unit
          ["baldedeleite"] = 2
        }
      }
    }
  },
  { -- PROCESSADOR DE LEITE
    name="Processador de Leite", -- menu name
    permissions = {"process.Leite"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=893.67346191406,y=3607.2319335938,z=32.824211120605, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Leite.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["baldedeleite"] = 1
      },
        products={ -- items given per unit
          ["Caixas de Leite"] = 1
        }
      }
    }
  },
  { -- CAMPO DE DIAMANTE
    name="Campo de Diamante", -- Nome do menu
    permissions = {"harvest.diamante"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=-594.40759277344,y=2092.2802734375,z=131.56622314453, -- Localização
    radius=2.5, height=1.5, -- area
    recipes = {
    ["Minerar"] = { -- Nome da ação
    description="Diamante Bruto minerar com a Picareta.", -- Descrição do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidade
    reagents={},
    products={ -- items given per unit
    ["Diamante com Pedra"] = 2
        }
      }
    }
  },
  { -- PROCESSADOR DE DIAMANTE
    name="Processador de Diamante", -- menu name
    permissions = {"process.diamante"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=830.19476318359,y=2147.2534179688,z=52.293380737305, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
    ["Processar"] = { -- action name
    description="Processador de Diamante.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={  -- items taken per unit
    ["Diamante com Pedra"] = 1
      },
    products={ -- items given per unit
    ["Diamante"] = 1
        }
      }
    }
  },
  { -- CAMPO DE OURO
     name="Campo De Ouro", -- Nome do menu
    permissions = {"harvest.Ouro"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=2947.0209960938,y=2802.8874511719,z=41.299701690674, -- Localização
    radius=2.5, height=1.5, -- area
    recipes = {
    ["Minerar"] = { -- Nome da ação
    description="Ouro Bruto minerar com Picareta.", -- Descrição do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidade
    reagents={  -- items taken per unit
    ["picareta"] = 1
      },
    products={ -- items given per unit
    ["Pepitas de Ouro"] = 3
        }
      }
    }
  },
  { -- PROCESSADOR DE OURO
    name="Processamento de Ouro", -- menu name
    permissions = {"process.Ouro"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=3334.580078125,y=5162.70703125,z=18.316473007202, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Ouro Bruto.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Pepitas de Ouro"] = 1
      },
        products={ -- items given per unit
          ["Ouro"] = 1
        }
      }
    }
  },
  { -- CAMPO DE COBRE
      name="Campo De Cobre", -- Nome do menu
    permissions = {"harvest.Cobre"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=-924.85504150391,y=4835.8149414063,z=308.70788574219, -- Localização
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Pegar"] = { -- Nome da ação
        description="Farme De Cobre minerar com Picareta.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["picareta"] = 1
      },
        products={ -- items given per unit
          ["Pepitas de Cobre"] = 4
        }
      }
    }
  },
  { -- PROCESSADOR DE COBRE
    name="Processamento de Cobre ", -- menu name
    permissions = {"process.Cobre"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=814.57116699219,y=1176.7609863281,z=330.70367431641, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Cobre.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Pepitas de Cobre"] = 1
      },
        products={ -- items given per unit
          ["Cobre"] = 1
        }
      }
    }
  },
  { -- CAMPO DE SAL
      name="Farmar Sal", -- Nome do menu
    permissions = {"harvest.sal"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=-1605.7797851563,y=5258.8530273438,z=2.0872757434845, -- Localização
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Minerar"] = { -- Nome da ação
        description="Farme de Sal minerar com Pa.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["pa"] = 1
      },
        products={ -- items given per unit
          ["Sal Fino"] = 5
        }
      }
    }
  },
  { -- PROCESSADOR DE SAL
    name="Processamento de Sal ", -- menu name
    permissions = {"process.sal"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=253.1393737793,y=894.65246582031,z=209.43571472168, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador Sal.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Sal Fino"] = 1
      },
        products={ -- items given per unit
          ["Pacote de Sal"] = 1
        }
      }
    }
  },
  { -- CAMPO DE TRIGO
      name="Farmar Trigo", -- Nome do menu
    permissions = {"harvest.trigo"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=2049.9018554688,y=4941.5913085938,z=40.966903686523, -- Localização
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Minerar"] = { -- Nome da ação
        description="Farme De Trigo minerar com foice.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["foice"] = 1
      },
        products={ -- items given per unit
          ["Trigo"] = 5
        }
      }
    }
  },
  { -- PROCESSADOR DE TRIGO
    name="processador de Trigo ", -- menu name
    permissions = {"process.trigo"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=2342.8767089844,y=2616.7216796875,z=46.667598724365, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Trigo.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Trigo"] = 1
      },
        products={ -- items given per unit
          ["Pacotes de Trigo"] = 1
        }
      }
    }
  },
  { -- MOTOBOY
    name="Produto Moto_boy", -- menu name
    permissions = {"moto_boy.cocacola_pizza"},
    r=0,g=125,b=255, -- color
    max_units=1000,
    units_per_minute=500,
    x=132.14855957031,y=-1462.1141357422,z=29.357055664063,
    radius=2, height=1.0, -- area
    recipes = {
    ["Pegando cocacola"] = { -- action name
    description="coca-cola geladinha pra entrega", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={ -- items given per unit
    ["cocacola"] = 1
        }
      },
    ["Pegando pizza"] = { -- action name
    description="pizza quentinha pra entrega", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={ -- items given per unit
    ["pizza"] = 1
    }
      }   
    }      
  },
  { -- CAMPO DE COCAINA
    name="Campo de Cocaina", -- Nome do menu 
    permissions = {"campo.cocaina"}, -- VocÃª pode adicionar permissÃµes
    r=0,g=200,b=0, -- cor
    max_units=1000,
    units_per_minute=500,
    x=1917.013671875,y=5101.9907226563,z=43.21529006958, -- LocalizaÃ§Ã£o
    radius=2, height=1.0, -- area
    recipes = {
    ["Colher"] = { -- Nome da aÃ§Ã£o
    description="Colher pasta de Coca.", -- DescriÃ§Ã£o do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidades
	out_dinheirosujo=80,
    reagents={}, -- Itens colhidos por unidade
    products={ -- Nome do produto fornecido por unidade
    ["pastadecocaina"] = 1
       } -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- PROCESSADOR DE COCAINA
    name="Processador de cocaina", -- menu name
    permissions = {"processador.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1000, -- unidades maximas do item
    units_per_minute=500, -- unidades que o transformador ganha de volta por minuto
    x=767.90173339844,y=-370.1455078125,z=49.977001190186, -- pos
    radius=2, height=1.0, -- area
    recipes = { -- items do menu
    ["Processar"] = { -- action name     767.90173339844,-370.1455078125,49.977001190186
    description="Processador de Cocaina.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={  -- items taken per unit
    ["pastadecocaina"] = 1
    },
    products={ -- items given per unit
    ["cocaina"] = 1,
        }
      }
    }
  },

  { -- CAMPO DE CRACK
    name="Campo de Crack", -- Nome do menu 
    permissions = {"campo.crack"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=1000,
    units_per_minute=500,
    x=-1858.0501708984,y=2250.0380859375,z=82.478172302246, -- LocalizaÃ§Ã£o
    radius=2, height=1.0, -- area
    recipes = {
    ["Colher"] = { -- Nome da aÃ§Ã£o
    description="Colher pasta de crack.", -- DescriÃ§Ã£o do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidade
	out_dinheirosujo=80,
    reagents={}, -- Itens colhidos por unidade
    products={ -- Nome do produto fornecido por unidade
    ["pastadecrack"] = 1
       } -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- REFINARA DE CRACK
    name="Refinaria de Crack", -- menu name
    permissions = {"processador.crack"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1000, -- unidades maximas do item
    units_per_minute=500, -- unidades que o transformador ganha de volta por minuto
    x=-779.89514160156,y=535.04681396484,z=121.24387359619, -- pos
    radius=2, height=1.0, -- area  
    recipes = { -- items do menu
    ["Processar"] = { -- action name
    description="Processador de Cocaina.", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=80,
    out_money=0, -- money earned per unit
    reagents={  -- items taken per unit
    ["pastadecrack"] = 1
    },
    products={ -- items given per unit
    ["crack"] = 1
        }
      }
    }
  },
  { -- PLANTAÃ‡ÃƒO DE ERVA
    name="PlantaÃ§Ã£o de erva",
    permissions = {"trafico_drogas"},
    r=0,g=102,b=0,
    max_units=1000,
    units_per_minute=500,
    x=2219.1667480469,y=5577.13671875,z=53.843963623047,   
    radius=2, height=1.0,
    recipes = {
    ["Pegando erva"] = {    
    description="Erva pega pronta pra processa!",
    in_money=0,
    out_money=0,
	out_dinheirosujo=80,
    reagents={},
    products={
    ["erva"] = 1
        } -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- PRODUTO LIXEIRO
    name="Produto do lixeiro",
    permissions = {"lixeiro_produto"},
    r=255,g=255,b=0,
    max_units=1000,
    units_per_minute=500,
    x=-472.36685180664,y=-1695.7678222656,z=18.906158447266,
    radius=2, height=1.0,
    recipes = {
    ["Pegando saco"] = {    
    description="saco pego pronta pra limpa a cidade!",
    in_money=0,
    out_money=0,
    reagents={},
    products={
    ["saco"] = 1
    }
      }   
    }      
  },
  { -- PROCESSADOR DE ERVA
    name="Processador de erva",
    permissions = {"trafico_drogas"},
    r=0,g=102,b=0,
    max_units=1000,
    units_per_minute=500,
    x=1412.4180908203,y=-702.66357421875,z=73.950286865234,    
    radius=2, height=1.0,
    recipes = {
    ["Processando sua erva"] = {
    description="maconha pega pronta pra enrolar!",
    in_money=0,
    out_money=0,
	out_dinheirosujo=80,
    reagents={
    ["erva"] = 1
        },
    products={
    ["maconha"] = 1
    }
      }   
    }      
  },
  { -- ENROLADO DE MACONHHA
    name="Enrolado de maconha",
    permissions = {"trafico_drogas"},
    r=0,g=102,b=0,
    max_units=1000,
    units_per_minute=500,
    x=347.20532226563,y=-1865.0452880859,z=30.848142623901,    
    radius=2, height=1.0,
    recipes = {
    ["Enrolando sua maconha"] = {
    description="maconha enrolada pronta pra vende!",
    in_money=0,
    out_money=0,
	out_dinheirosujo=80,
    reagents={
    ["maconha"] = 1
        },
    products={
    ["baseado"] = 2
    }
      }   
    }      
  },
  { -- MAR DE PEIXE
    name="Mar de peixe",
    permissions = {"pescador_peixe"},
    r=255,g=255,b=0,
    max_units=1000,
    units_per_minute=500,
    x=-1053.7222900391,y=-4322.240234375,z=2.3005771636963,
    radius=7.5, height=1.5,
    recipes = {
    ["Pegando  peixe"] = {    
    description="peixe pego pronta pra limpa!",
    in_money=0,
    out_money=0,
    reagents={},
    products={
    ["peixe"] = 1
        }
      }     
    }        
  },
  { -- LIMPADOR DE PISCINA
    name="limpador de piscina",
    permissions = {"piscina_item"},
    r=255,g=255,b=0,
    max_units=1000,
    units_per_minute=500,
    x=491.59954833984,y=215.01063537598,z=104.74440765381,   
    radius=2, height=1.0,
    recipes = {
    ["Pegando  kitlimpeza"] = {    
    description="kitlimpeza pego pronta pra usa!",
    in_money=0,
    out_money=0,
    reagents={},
    products={
    ["kitlimpeza"] = 1
        }
      }     
    }        
  },
  { -- CORREIO
    name="correio",
    permissions = {"correio_item"},
    r=204,g=255,b=0,
    max_units=1000,
    units_per_minute=500,
    x=474.5302734375,y=-1956.1446533203,z=24.556396484375,      
    radius=2, height=1.0,
    recipes = {
    ["Pegando  encomenda"] = {    
    description="encomenda pego pronta pra usa!",
    in_money=0,
    out_money=0,
    reagents={},
    products={
    ["encomenda"] = 1
        }
      }     
    }        
  },
  { -- LIMPADOR DE PEIXE
    name="Limpador de peixe",
    permissions = {"pescador_peixe"},
    r=0,g=255,b=255,
    max_units=1000,
    units_per_minute=500,
    x=1336.1596679688,y=4310.626953125,z=38.014312744141,    
    radius=2, height=1.0,
    recipes = {
    ["limpando peixe"] = {
    description="peixe limpo pronta pra empacota!",
    in_money=0,
    out_money=0,
    reagents={
    ["peixe"] = 1
        },
    products={
    ["peixe_limpo"] = 1
        }
      }     
    }        
  },
  { -- RESTAURANTE DE PEIXE
    name="Restaurante de peixe",
    permissions = {"pescador_peixe"},
    r=0,g=255,b=255,
    max_units=1000,
    units_per_minute=500,
    x=-1594.3208007813,y=5192.6240234375,z=4.3100934028625,    
    radius=2, height=1.0,
    recipes = {
    ["fritando peixe"] = {
    description="peixe frito pronta pra vende!",
    in_money=0,
    out_money=0,
    reagents={
    ["peixe_limpo"] = 1
        },
    products={
    ["peixe_frito"] = 1
        }
      }     
    }        
  },
  { -- OAB ADVOGADO
    name="OAB", -- menu name
    permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-589.39282226563,y=-701.62200927734,z=36.287059783936,   
    radius=2, height=1.0, -- area
    recipes = {
    ["OAB"] = { -- action name
    description="Carteira de Advogado.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["oab"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },  
  { -- HACKER
    name="Hacker", -- menu name
    permissions = {"hacker.credit_cards"}, -- you can add permissions
    r=255,g=0,b=0, -- color
    max_units=1000,
    units_per_minute=500,
    x=707.357238769531,y=-966.98876953125,z=30.4128551483154,
    radius=2, height=1.0, -- area
    recipes = {
    ["hacking"] = { -- action name
    description="Hacking credit cards.", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=80,
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["credit"] = 1
    }, -- items given per unit
    aptitudes={ -- optional
    ["hacker.hacking"] = 1 -- "group.aptitude", give 1 exp per unit
       } -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- ACADEMIA
    name="Musculacao", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=500,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319,
    radius=2, height=1.0, -- area
    recipes = {
    ["Forca"] = { -- action name
    description="Aumente sua forÃ§a e stamina.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={}, -- items given per unit
    aptitudes={
    ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
    }
      }   
    }      
  },
  { -- COLETOR DE URANIO
    name="Coletar Uranio", -- Nome Do Menu
    r=51,g=51,b=0, -- Cor
    max_units=200, -- quantos Items Player Carrega
    units_per_minute=60, -- unidades por minuto
    x=3067.7629394531,y=2219.5422363281,z=2.724246263504, -- Coordenada do Blip
    radius=2, height=1.0, -- area
    recipes = {
    ["Coletando"] = { -- nome da aÃ§Ã£o
    description="Coletando l Uranio.", -- action description
    in_money=0, -- dinheiro tomado por unidade
	out_dinheirosujo=80,
    out_money=0, -- Dinheiro ganho por unidade
    reagents={}, -- itens escolhidos por unidade
    products={
    ["uranio"] = 1
    }, -- itens fornecidos por unidade
    aptitudes={} -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- ENRIQUECIMENTO DE URANIO
    name="Enriquecimento de Uranio", -- menu name traitement
    r=51,g=51,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=2329.9621582031,y=2571.7009277344,z=46.678863525391, --  medic ancienne meth
    radius=2, height=1.0, -- area
    recipes = {
    ["Enriquecendo"] = { -- action name
    description="Coletando l Uranio Enriquecido.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["uranio"] = 5
    }, -- items taken per unit
    products={
    ["uranio_enriquecido"] = 5
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
  { -- ROUBAR CORPOS
    name="Roubar Corpos", -- menu name
    r=102,g=51,b=0, -- color
    max_units=200,
    units_per_minute=999,
    x=295.92770385742,y=-1349.0679931641,z=24.537803649902, -- 295.92770385742,-1349.0679931641,24.537803649902
    radius=4, height=1.0, -- area
    recipes = {
    ["Pegando"] = { -- action name
    description="Pegando Corpos.", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=80,
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["corpos"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- REMOVER ORGÃOS
    name="Remover Orgaos", -- menu name traitement 
    r=102,g=51,b=0, -- color
    max_units=200,
    units_per_minute=999,
    x=248.75984191895,y=-1374.5345458984,z=39.534374237061, --  248.75984191895,-1374.5345458984,39.534374237061
    radius=2, height=1.0, -- area
    recipes = {
    ["Removendo"] = { -- action name
    description="Removendo Orgaos.", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=80,
    out_money=0, -- money earned per unit
    reagents={
    ["corpos"] = 1
    }, -- items taken per unit
    products={
    ["orgaos"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
  { -- VENDA DE ORGÃOS
    name="Venda De Orgaos", -- menu name
    r=102,g=51,b=0, -- color
    max_units=200,
    units_per_minute=999,
    x=-2033.3133544922,y=-1035.1331787109,z=5.8823466300964, -- -2033.3133544922,-1035.1331787109,5.8823466300964
    radius=2, height=1.0, -- area
    recipes = {
    ["Vendendo"] = { -- action name
    description="Vendendo Os Orgaos.", -- action description
    in_money=0, -- money taken per unit
    out_money=80, -- money earned per unit
    reagents={
    ["orgaos"] = 1
    },
    products={}
      }
    }
  },
  { -- EXTRAIR LSD
    name="Extrair LsD", -- menu name
    r=51,g=153,b=255, -- color
    max_units=200,
    units_per_minute=999,
    x=-115.86870574951,y=1908.5133056641,z=197.42163085938, 
    radius=4, height=1.0, -- area
    recipes = {
    ["Extrair"] = { -- action name
    description="Extraindo lsd", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=80,
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["lsd"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- PRODUZIR LSD
    name="Produzir LsD", -- menu name traitement 
    r=51,g=153,b=255, -- color
    max_units=200,
    units_per_minute=999,
    x=953.11242675781,y=-1698.1973876953,z=29.73952293396,
    radius=2, height=1.0, -- area
    recipes = {
    ["Produzir"] = { -- action name
    description="Produzindo lsd", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=80,
    reagents={
    ["lsd"] = 1
    }, -- items taken per unit
        products={
    ["lsdt"] = 1
     },
     aptitudes={ -- optional
    ["laboratory.lsd"] = 3, -- "group.aptitude", give 1 exp per unit
    ["science.chemicals"] = 6
        }
      }
    }
  },
  { -- COLHEITA DE EXTASE
    name="Pegar Metil para fabricar Ecstasy", -- menu name
    r=195,g=178,b=235, -- color
    max_units=200,
    units_per_minute=999,
    x=416.65802001953,y=-1833.1413574219,z=28.073215484619, -- 416.65802001953,-1833.1413574219,28.073215484619
    radius=4, height=1.0, -- area
    recipes = {
    ["pegar"] = { -- action name
    description="Pegue o Extasie.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=80,
    reagents={}, -- items taken per unit
    products={
    ["metil"] = 1
    }, -- items given per unit
        aptitudes={} -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- PROCESSADOR DE ECSTASY
    name="Tratamento Ecstasy", -- menu name traitement 
    r=195,g=178,b=235, -- color
    max_units=200,
    units_per_minute=999,
    x=-561.68438720703,y=281.64797973633,z=85.676383972168, --  -561.68438720703,281.64797973633,85.676383972168
    radius=2, height=1.0, -- area
    recipes = {
    ["tratamento"] = { -- action name
    description="Trate os Sassafras.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per 
	out_dinheirosujo=80,
    reagents={
    ["metil"] = 1
    }, -- items taken per unit
    products={
    ["ecstasy"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  }
}

-- define multiple static transformers with postions list
local weedplants = {
 -- {1873.36901855469,3658.46215820313,33.8029747009277},
 -- {1856.33776855469,3635.12109375,34.1897926330566},
 -- {1830.75390625,3621.44140625,33.8487205505371},
  --{1784.70251464844,3579.93798828125,34.7956123352051},
  --{182.644317626953,3315.75537109375,41.4806938171387},
  --{1764.65661621094,3642.916015625,34.5866050720215},
  --{1512.91027832031,1673.76025390625,111.531875610352}
}
for k,v in pairs(weedplants) do
  local plant = {
    name="Planta de Maconha", -- menu name
    --permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, plant)
end

local warehouses = {
  {-1111.2841796875,4937.4052734375,218.386306762695},
  {1539.01794433594,1704.29174804688,109.659622192383},
  {981.412841796875,-1805.70349121094,35.4845695495605}
}
for k,v in pairs(warehouses) do
  local warehouse = {
    name="Oficina de armas", -- menu name
    permissions = {"build.gun"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=10,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Build Pistol"] = { -- action name
        description="Construir pistola.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
      ["pistol_parts"] = 1
    }, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PISTOL"] = 1
        }
      },
      ["Build Shotgun"] = { -- action name
        description="Construir shotgun.", -- action description
        in_money=3000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
      ["shotgun_parts"] = 1
    }, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PUMPSHOTGUN"] = 1
        }
      },
      ["Build SMG"] = { -- action name
        description="Construir submachinegun.", -- action description
        in_money=5000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
      ["smg_parts"] = 1
    }, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_SMG"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, warehouse)
end

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed plant"] = {
    def = {
      name="Weed Plant", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = weedplants
  },
  ["gun warehouse"] = {
    def = {
      name="Gun Warehouse", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = warehouses
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 30-- 12 hours -- 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed plant"] = 10000,
    ["gun warehouse"] = 25000
  },
  positions = {
  --  {1821.12390136719,3685.9736328125,34.2769317626953},
   -- {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 30, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg