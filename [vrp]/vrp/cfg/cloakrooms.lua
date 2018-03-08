
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
    ["Uniforme Masculino"] = {
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
    ["Uniforme Masculino"] = {
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
    ["Uniforme Masculino"] = surgery_male,
    ["Uniforme feminino"] = surgery_female
  },
  ["Bombeiro"] = {
    _config = { permissions = {"emergency.cloakroom"} },
    ["Uniforme Masculino"] = emergency_male,
    ["Uniforme feminino"] = emergency_female
  },
    ["motorista_de_onibus"] = {--------------------------------------limpador_de_piscina
    _config = { permissions = {"bus.cloakroom"} },
    ["Uniforme Masculino"] = Motoristabus_male
  },
    ["limpador_de_piscina"] = {--------------------------------------limpador_de_piscina
    _config = { permissions = {"limpador_de_piscina.cloakroom"} },
    ["Uniforme Masculino"] = limpador_de_piscina_male
  },
    ["carteiro"] = {--------------------------------------carteiro
    _config = { permissions = {"carteiro.cloakroom"} },
    ["Uniforme Masculino"] = carteiro_male
  },
    ["lixeiro"] = {--------------------------------------lixeiro
    _config = { permissions = {"lixeiro.cloakroom"} },
    ["Uniforme Masculino"] = lixeiro_male
  },
    ["motoristabancario"] = {--------------------------------------motoristabancario
    _config = { permissions = {"motoristabancario.cloakroom"} },
    ["Uniforme Masculino"] = motoristabancario_male
  },
    ["motoboy"] = {--------------------------------------motoboy
    _config = { permissions = {"motoboy.cloakroom"} },
    ["Uniforme Masculino"] = motoboy_male
  },
    ["Policia Civil"] = {-----NOVO
    _config = { permissions = {"Civil.cloakroom"} },
    ["Uniforme Masculino"] = Civil_male
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
  {"motoboy", 140.68260192871,-1461.2135009766,29.357044219971}, -- MOTO BOY
  {"bope", 139.31167602539,-736.06536865234,258.15209960938},     -- BOPE
  {"Advogado",-589.49383544922,-706.19000244141,36.27938079834}, -- ADVOGADO  
  {"Policia Civil", 459.71633911133,-988.71325683594,30.68957901001},-----NOVO
  {"Bombeiro",1192.5698242188,-1474.3294677734,34.859539031982}, 
  {"Mecanico",474.02072143555,-1310.9348144531,29.225872039795} 
}

return cfg
