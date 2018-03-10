
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
          ["caixas de leite"] = 1
        }
      }
    }
  },
  { -- CAMPO DE DIAMANTE
    name="Campo de Diamante", -- Nome do menu
    permissions = {"harvest.diamante"}, -- Voc� pode adicionar permiss�es
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=-594.40759277344,y=2092.2802734375,z=131.56622314453, -- Localiza��o
    radius=2.5, height=1.5, -- area
    recipes = {
    ["Minerar"] = { -- Nome da a��o
    description="Diamante Bruto minerar com a Picareta.", -- Descri��o do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidade
    reagents={},
    products={ -- items given per unit
    ["diamante com pedra"] = 2
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
    ["diamante com pedra"] = 1
      },
    products={ -- items given per unit
    ["diamante"] = 1
        }
      }
    }
  },
  { -- CAMPO DE OURO
     name="Campo De Ouro", -- Nome do menu
    permissions = {"harvest.Ouro"}, -- Voc� pode adicionar permiss�es
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=2947.0209960938,y=2802.8874511719,z=41.299701690674, -- Localiza��o
    radius=2.5, height=1.5, -- area
    recipes = {
    ["Minerar"] = { -- Nome da a��o
    description="Ouro Bruto minerar com Picareta.", -- Descri��o do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidade
    reagents={  -- items taken per unit
    ["picareta"] = 1
      },
    products={ -- items given per unit
    ["pepitas de ouro"] = 3
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
          ["pepitas de ouro"] = 1
      },
        products={ -- items given per unit
          ["ouro"] = 1
        }
      }
    }
  },
  { -- CAMPO DE COBRE
      name="Campo De Cobre", -- Nome do menu
    permissions = {"harvest.Cobre"}, -- Voc� pode adicionar permiss�es
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=-924.85504150391,y=4835.8149414063,z=308.70788574219, -- Localiza��o
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Pegar"] = { -- Nome da a��o
        description="Farme De Cobre minerar com Picareta.", -- Descri��o do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["picareta"] = 1
      },
        products={ -- items given per unit
          ["pepitas de cobre"] = 4
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
          ["pepitas de cobre"] = 1
      },
        products={ -- items given per unit
          ["cobre"] = 1
        }
      }
    }
  },
  { -- CAMPO DE SAL
      name="Farmar Sal", -- Nome do menu
    permissions = {"harvest.sal"}, -- Voc� pode adicionar permiss�es
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=-1605.7797851563,y=5258.8530273438,z=2.0872757434845, -- Localiza��o
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Minerar"] = { -- Nome da a��o
        description="Farme de Sal minerar com Pa.", -- Descri��o do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["pa"] = 1
      },
        products={ -- items given per unit
          ["sal fino"] = 5
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
          ["sal fino"] = 1
      },
        products={ -- items given per unit
          ["pacote de sal"] = 1
        }
      }
    }
  },
  { -- CAMPO DE TRIGO
      name="Farmar Trigo", -- Nome do menu
    permissions = {"harvest.trigo"}, -- Voc� pode adicionar permiss�es
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=20,
    x=2049.9018554688,y=4941.5913085938,z=40.966903686523, -- Localiza��o
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Minerar"] = { -- Nome da a��o
        description="Farme De Trigo minerar com foice.", -- Descri��o do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["foice"] = 1
      },
        products={ -- items given per unit
          ["trigo"] = 5
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
          ["trigo"] = 1
      },
        products={ -- items given per unit
          ["pacotes de trigo"] = 1
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
    permissions = {"campo.cocaina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=1000,
    units_per_minute=500,
    x=1916.9268798828,y=5101.9365234375,z=43.23543548584, -- Localização
    radius=2, height=1.0, -- area
    recipes = {
    ["Colher"] = { -- Nome da ação
    description="Colher pasta de Coca.", -- Descrição do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidades
	out_dinheirosujo=3,
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
    x=1218.8428955078,y=-618.83123779297,z=69.582069396973, -- pos
    radius=2, height=1.0, -- area
    recipes = { -- items do menu
    ["Processar"] = { -- action name     767.90173339844,-370.1455078125,49.977001190186
    description="Processador de Cocaina.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
    reagents={  -- items taken per unit
    ["pastadecocaina"] = 1
    },
    products={ -- items given per unit
    ["cocaina"] = 1,
        }
      }
    }
  },
    { -- TRANSFORMADOR DE COCAINA
    name="TRANSFORMADOR DE COCAINA", -- menu name
    permissions = {"processador.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1000, -- unidades maximas do item
    units_per_minute=500, -- unidades que o transformador ganha de volta por minuto
    x=1675.4012451172,y=-1935.5599365234,z=114.81266784668, -- pos
    radius=2, height=1.0, -- area
    recipes = { -- items do menu
    ["Processar"] = { -- action name     767.90173339844,-370.1455078125,49.977001190186
    description="Processador de Cocaina.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
    reagents={  -- items taken per unit
    ["cocaina"] = 1
    },
    products={ -- items given per unit
    ["pinodecoca"] = 1,
        }
      }
    }
  },  
  { -- PESCADOR DE TARTARUGA
name="Pescador de Tartaruga", -- menu name
    permissions = {"harvest.tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=4007.3933105469,y=4467.4580078125,z=-8.9409952163696, -- pos
    radius=5.5, height=1.5, -- area  4007.3933105469,4467.4580078125,-8.9409952163696
    recipes = { -- items do menu
      ["Pescar"] = { -- action name
        description="Pescar Tartaruga com oxigenio para submarino.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
		out_dinheirosujo=3,
        reagents={  -- items taken per unit
          ["oxigenio"] = 1
      },
        products={ -- items given per unit
          ["tartaruga"] = 2
        }
      }
    }
  },
  { -- VENDEDOR DE TARTARUGA
    name="Vender Tartaruga", -- menu name
    permissions = {"process.Tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-119.17678833008,y=-1486.1040039063,z=36.98205947876, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Tartaruga"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
		out_dinheirosujo=70,
        reagents={  -- items taken per unit
          ["tartaruga"] = 1
      },
        products={
        }
      }
    }
  },  
  { -- CAMPO DE CRACK
    name="Crack - Colheita", -- Nome do menu 
    permissions = {"campo.crack"}, -- Voc� pode adicionar permiss�es
    r=0,g=200,b=0, -- cor
    max_units=1000,
    units_per_minute=500,
    x=-1858.0501708984,y=2250.0380859375,z=82.478172302246, -- Localização
    radius=2, height=1.0, -- area
    recipes = {
    ["Colher"] = { -- Nome da ação
    description="Colher pasta de crack.", -- Descrição do produto a se colher
    in_money=0, -- Dinheiro dado por unidade
    out_money=0, -- Dinheiro ganho por unidade
	out_dinheirosujo=3,
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
    name="Crack - Refinaria", -- menu name
    permissions = {"processador.crack"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1000, -- unidades maximas do item
    units_per_minute=500, -- unidades que o transformador ganha de volta por minuto
    x=-780.46740722656,y=534.67590332031,z=123.02164459229, -- pos
    radius=2, height=1.0, -- area  
    recipes = { -- items do menu
    ["Processar"] = { -- action name
    description="Processador de Cocaina.", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=3,
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
  
  
  
    { -- 
    name="Crack Transformador", -- menu name
    permissions = {"processador.crack"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1000, -- unidades maximas do item
    units_per_minute=500, -- unidades que o transformador ganha de volta por minuto
    x=1667.2595214844,y=-1631.2132568359,z=112.8876953125, -- pos
    radius=2, height=1.0, -- area  
    recipes = { -- items do menu
    ["Processar"] = { -- action name
    description="Processador de Cocaina.", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=3,
    out_money=0, -- money earned per unit
    reagents={  -- items taken per unit
    ["crack"] = 1
    },
    products={ -- items given per unit
    ["pedradecrack"] = 1
        }
      }
    }
  },  
  { -- PLANTAÇÃO DE ERVA
    name="Plantação de erva",
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
	out_dinheirosujo=3,
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
    x=1482.2690429688,y=-1738.5200195313,z=90.62540435791,    
    radius=2, height=1.0,
    recipes = {
    ["Processando sua erva"] = {
    description="maconha pega pronta pra enrolar!",
    in_money=0,
    out_money=0,
	out_dinheirosujo=3,
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
    x=45.760025024414,y=-1939.0877685547,z=21.589450836182,    
    radius=2, height=1.0,
    recipes = {
    ["Enrolando sua maconha"] = {
    description="maconha enrolada pronta pra vende!",
    in_money=0,
    out_money=0,
	out_dinheirosujo=3,
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
  
    { -- OAB ADVOGADO
    name="Documentos", -- menu name
    permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=500,
    x=-585.24676513672,y=-703.81573486328,z=36.287094116211,   
    radius=2, height=1.0, -- area
    recipes = {
    ["Documentos"] = { -- action name
    description="Pegar documentos", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["documento"] = 1
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
	out_dinheirosujo=5,
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
    description="Aumente sua força e stamina.", -- action description
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
    ["Coletando"] = { -- nome da ação
    description="Coletando l Uranio.", -- action description
    in_money=0, -- dinheiro tomado por unidade
	out_dinheirosujo=3,
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
  { -- Refinador DE URANIO
    name="Refinador de Uranio", -- menu name traitement
    r=51,g=51,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=2329.9621582031,y=2571.7009277344,z=46.678863525391, --  medic ancienne meth
    radius=2, height=1.0, -- area
    recipes = {
    ["Refinador"] = { -- action name
    description="Coletando l Uranio Refinado.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
    reagents={
    ["uranio"] = 5
    }, -- items taken per unit
    products={
    ["uraniorefinado"] = 5
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
    { -- ENRIQUECIMENTO DE URANIO
    name="Enriquecimento de Uranio", -- menu name traitement
    r=51,g=51,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-213.01210021973,y=-1683.3831787109,z=34.850330352783, --  medic ancienne meth
    radius=2, height=1.0, -- area
    recipes = {
    ["Enriquecendo"] = { -- action name
    description="Coletando l Uranio Enriquecido.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
    reagents={
    ["uraniorefinado"] = 5
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
    x=-1742.0139160156,y=-216.63523864746,z=56.580638885498, -- 295.92770385742,-1349.0679931641,24.537803649902
    radius=4, height=1.0, -- area
    recipes = {
    ["Pegando"] = { -- action name
    description="Pegando Corpos.", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=3,
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
  { -- REMOVER ORG�OS
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
	out_dinheirosujo=3,
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
  { -- VENDA DE ORG�OS
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
    out_money=10, -- money earned per unit
	out_dinheirosujo=2,
    reagents={
    ["orgaos"] = 1
    },
    products={}
      }
    }
  },
  { -- EXTRAIR LSD
    name="LSD Colheita", -- menu name
    r=51,g=153,b=255, -- color
    max_units=200,
    units_per_minute=999,
    x=-115.86870574951,y=1908.5133056641,z=197.42163085938, 
    radius=4, height=1.0, -- area
    recipes = {
    ["Colher"] = { -- action name
    description="Extraindo lsd", -- action description
    in_money=0, -- money taken per unit
	out_dinheirosujo=0,
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
    reagents={}, -- items taken per unit
    products={
    ["hidrazida"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    },
    onstart = function(player,recipe) vRPclient.applyWantedLevel(player,{3}) end,-- items given per unit
    aptitudes={} -- optional
  },
  { -- PRODUZIR LSD
    name="LSD Processador", -- menu name traitement 
    r=51,g=153,b=255, -- color
    max_units=200,
    units_per_minute=999,
    x=1389.6033935547,y=3603.8266601563,z=38.941886901855,
    radius=2, height=1.0, -- area
    recipes = {
    ["Processador"] = { -- action name
    description="Processar lsd", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
    reagents={
    ["hidrazida"] = 1
    }, -- items taken per unit
        products={
    ["eter"] = 1
     },
     aptitudes={ -- optional
    ["laboratory.lsd"] = 3, -- "group.aptitude", give 1 exp per unit
    ["science.chemicals"] = 6
        }
      }
    }
  },
  { -- PRODUZIR LSD
    name="LSD Transformador", -- menu name traitement 
    r=51,g=153,b=255, -- color
    max_units=200,
    units_per_minute=999,
    x=-707.43524169922,y=620.88018798828,z=155.21087646484,
    radius=2, height=1.0, -- area
    recipes = {
    ["Produzir"] = { -- action name
    description="Produzindo lsd", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
    reagents={
    ["eter"] = 1
    }, -- items taken per unit
        products={
    ["lsd"] = 1
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
    x=16.626104354858,y=-1832.2036132813,z=24.769153594971,
    radius=4, height=1.0, -- area
    recipes = {
    ["pegar"] = { -- action name
    description="Pegue o Extasie.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
	out_dinheirosujo=3,
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
    x=-561.68438720703,y=281.64797973633,z=85.676383972168, 
    radius=2, height=1.0, -- area
    recipes = {
    ["tratamento"] = { -- action name
    description="Trate os Sassafras.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per 
	out_dinheirosujo=3,
    reagents={
    ["metil"] = 1
    }, -- items taken per unit
    products={
    ["ecstasy"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
  
  
    { -- TRANSFORMADOR DE ECSTASY
    name="Ecstasy Transfomador", -- menu name traitement 
    r=195,g=178,b=235, -- color
    max_units=200,
    units_per_minute=999,
    x=-914.14428710938,y=750.26470947266,z=182.16152954102, 
    radius=2, height=1.0, -- area
    recipes = {
    ["Transfomador"] = { -- action name
    description="Tranformador de Ecstasy em bala.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per 
	out_dinheirosujo=3,
    reagents={
    ["ecstasy"] = 1
    }, -- items taken per unit
    products={
    ["docedeecstasy"] = 1
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
        in_money=100, -- money taken per unit
		out_dinheirosujo=2,
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
        in_money=100, -- money taken per unit
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
        in_money=100, -- money taken per unit
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