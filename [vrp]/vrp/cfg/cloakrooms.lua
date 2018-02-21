
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local Motoristabus_male = { model = "a_m_y_hasjew_01" }
local Civil_male = { model = "s_m_y_cop_01" }
local surgery_male = { model = "mp_m_freemode_01" }  
local surgery_female = { model = "mp_f_freemode_01" }
local lixeiro_male = { model = "s_m_y_construct_02" }-------------------lixeiro
local limpador_de_piscina_male = { model = "s_m_m_lathandy_01" }-------------------limpador_de_piscina
local carteiro_male = { model = "s_m_m_postal_01" }-------------------carteiro
local motoristabancario_male = { model = "s_m_m_chemsec_01" }-------------------motoristabancario
local motoboy_male = { model = "g_m_m_chigoon_01" }-------------------motoboy
local emergency_male = { model = "s_m_m_paramedic_01" }
local emergency_female = { model = "s_f_y_scrubs_01" }
local uniforme_bope = { model = "s_m_y_swat_01" } 
local uniforme_prf = { model = "s_m_y_hwaycop_01" }
local uniforme_delegado = { model = "s_m_m_marine_01" }
local surgery_mcop = { model = "s_m_y_cop_01" }
local surgery_fcop = { model = "s_f_y_cop_01" }

for i=0,19 do
  uniforme_bope[i] = {0,0}
  uniforme_prf[i] = {0,0}
  surgery_female[i] = {0,0}
  surgery_male[i] = {0,0}
  emergency_male[i] = {0,0}
  emergency_female[i] = {0,0}
  Civil_male[i] = {0,0}
  motoboy_male[i] = {0,0}
  carteiro_male[i] = {0,0}
  limpador_de_piscina_male[i] = {0,0}
  lixeiro_male[i] = {0,0}
  Motoristabus_male[i] = {0,0}
  uniforme_delegado[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["Advogado"] = {
    _config = { permissions = {"advogado.cloakroom"} },
    ["Male uniform"] = {
      [2] = {3,1},
      [3] = {14,0},
      [4] = {24,0},
      [6] = {10,0},
      ["p1"] = {3,0},
      [8] = {60,0},
      [11] = {10,0},
      ["p2"] = {0,0}
    }
  },
  ["Mecanico"] = {
    _config = { permissions = {"mecanico.cloakroom"} },
    ["Uniforme Masculino"] = {
      [3] = {11,0},
      [4] = {36,0},
      [6] = {14,0},
      [11] = {43,0},
    },
  },
  
   ["Advogado"] = {
    _config = { permissions = {"advogado.cloakroom"} },
    ["Male uniform"] = {
      [2] = {3,1},
      [3] = {14,0},
      [4] = {24,0},
      [6] = {10,0},
      ["p1"] = {3,0},
      [8] = {60,0},
      [11] = {10,0},
      ["p2"] = {0,0}
    }
  },
  ["surgery"] = {
    _config = { not_uniform = true },
    ["Male"] = surgery_male,
    ["Female"] = surgery_female
  },
  ["Bombeiro"] = {
    _config = { permissions = {"emergency.cloakroom"} },
    ["Male"] = emergency_male,
    ["Female"] = emergency_female
  },
    ["motorista_de_onibus"] = {--------------------------------------limpador_de_piscina
    _config = { permissions = {"bus.cloakroom"} },
    ["Male"] = Motoristabus_male
  },
    ["limpador_de_piscina"] = {--------------------------------------limpador_de_piscina
    _config = { permissions = {"limpador_de_piscina.cloakroom"} },
    ["Male"] = limpador_de_piscina_male
  },
    ["carteiro"] = {--------------------------------------carteiro
    _config = { permissions = {"carteiro.cloakroom"} },
    ["Male"] = carteiro_male
  },
    ["lixeiro"] = {--------------------------------------lixeiro
    _config = { permissions = {"lixeiro.cloakroom"} },
    ["Male"] = lixeiro_male
  },
    ["motoristabancario"] = {--------------------------------------motoristabancario
    _config = { permissions = {"motoristabancario.cloakroom"} },
    ["Male"] = motoristabancario_male
  },
    ["motoboy"] = {--------------------------------------motoboy
    _config = { permissions = {"motoboy.cloakroom"} },
    ["Male"] = motoboy_male
  },
    ["Policia Civil"] = {-----NOVO
    _config = { permissions = {"Civil.cloakroom"} },
    ["Male"] = Civil_male
  },
    ["delegado"] = {
    _config = { permissions = {"delegado.cloakroom"} },
  ["Uniforme Delegado geral"] = uniforme_delegado
  },
    ["bope"] = {
    _config = { permissions = {"police.cloakroom"} },
  ["Uniforme Bope"] = uniforme_bope
  },
    ["prf"] = {
    _config = { permissions = {"prf.cloakroom"} },
  ["Uniforme prf"] = uniforme_prf,  
  }
}

cfg.cloakrooms = {
  {"delegado",450.76196289063,-974.14392089844,30.68957901001},---prf
  {"prf",-449.00964355469,6015.482421875,31.716388702393},---prf
  {"motorista_de_onibus", -328.38424682617,-1007.8889770508,30.38508605957},--bus
  {"carteiro",472.97729492188,-1952.4155273438,24.569232940674},----------------------------carteiro
  {"limpador_de_piscina",497.78103637695,199.14653015137,104.74494934082},-------------------limpador_de_piscina
  {"lixeiro",-465.49124145508,-1709.2236328125,18.735975265503},   -- LIXEIRO
  {"motoristabancario",-338.76171875,-972.93182373047,31.080617904663},-- MOTORISTA BANCARIO
  {"motoboy", -298.64984130859,-992.76147460938,31.08060836792}, -- MOTO BOY
  {"bope", 456.7121887207,-988.71466064453,30.689603805542},     -- BOPE
  {"bope",-1128.6147460938,-833.06713867188,13.493161201477},    -- BOPE
  {"Advogado",-589.49383544922,-706.19000244141,36.27938079834}, -- ADVOGADO
  
  
  
  
  {"Policia Civil", 459.71633911133,-988.71325683594,30.68957901001},-----NOVO
  {"surgery",1849.7425,3686.5759,34.2670},----first spawn change skin
  {"surgery",75.3451766967773,-1392.86596679688,29.3761329650879},---skinsshops
  {"surgery",-700.089477539063,-151.570571899414,37.4151458740234},
  {"surgery",-170.416717529297,-296.563873291016,39.7332878112793},
  {"surgery",425.61181640625,-806.519897460938,29.4911422729492},
  {"surgery",-822.166687011719,-1073.58020019531,11.3281087875366},
  {"surgery",-1186.25744628906,-771.20166015625,17.3308639526367},
  {"surgery",-1450.98388671875,-238.164260864258,49.8105850219727},
  {"surgery",4.44537162780762,6512.244140625,31.8778476715088},
  {"surgery",1693.91735839844,4822.66162109375,42.0631141662598},
  {"surgery",118.071769714355,-224.893646240234,54.5578384399414},
  {"surgery",620.459167480469,2766.82641601563,42.0881042480469},
  {"surgery",1196.89221191406,2710.220703125,38.2226066589355},
  {"surgery",-3178.01000976563,1043.21044921875,20.8632164001465},
  {"surgery",-1101.15161132813,2710.8203125,19.1078643798828},
  {"Bombeiro",232.56192016602,-1372.0074462891,39.534381866455},   
  {"Advogado",-309.03363037109,-946.48193359375,31.08060836792},
  {"Mecanico",474.02072143555,-1310.9348144531,29.225872039795} 
}

return cfg
