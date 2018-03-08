
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
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
local prisoner_01 = { model = "u_m_y_prisoner_01" }
local prisoner_02 = { model = "s_m_y_prisoner_01" }
-- Advogado
local csb_reporter = { model = "csb_reporter"}
local ig_paper = { model = "ig_paper"}
local korlieut_01 = { model = "g_m_y_korlieut_01"}
local bankman = { model = "ig_bankman"}
-- Mecanico
local lathandy_01 = { model = "s_m_m_lathandy_01" }
local janitor = { model = "csb_janitor" }
local autoshop_02 = { model = "s_m_m_autoshop_02" }
local gaffer_01 = { model = "s_m_m_gaffer_01" }
local xmech_01 = { model = "s_m_y_xmech_01" }
local xmech_02 = { model = "s_m_y_xmech_02" }
-- Motorista de Onibus
local andreas = { model = "ig_andreas" }
local barry = { model = "ig_barry" }
local baygor = { model = "u_m_y_baygor" }

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
  uniforme_delegado[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
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
    ["Uniforme motoboy"] = {--------------------------------------motoboy
    _config = { permissions = {"motoboy.cloakroom"} },
    ["Uniforme Masculino"] = motoboy_male
  },
    ["Policia Civil"] = {-----NOVO
    _config = { permissions = {"Civil.cloakroom"} },
    ["Uniforme Masculino"] = Civil_male
  },
    ["Uniforme delegado"] = {
    _config = { permissions = {"delegado.cloakroom"} },
  ["Uniforme Delegado geral"] = uniforme_delegado
  },
    ["Uniforme bope"] = {
    _config = { permissions = {"police.cloakroom"} },
  ["Uniforme Bope"] = uniforme_bope
  },
    ["Uniforme Prisioneiro"] = {
    ["Skin 1"] = prisoner_01,
	["Skin 2"] = prisoner_02,
  },
    ["Uniforme Mecanico"] = {
    _config = { permissions = {"repair.cloakroom"} },
    ["Skin 1"] = lathandy_01,
	["Skin 2"] = janitor,
	["Skin 3"] = autoshop_02,
	["Skin 4"] = gaffer_01,
	["Skin 5"] = xmech_01,
	["Skin 6"] = xmech_02,
  },
    ["Uniforme Advogado"] = {
    _config = { permissions = {"advogado.cloakroom"} },
    ["Skin 1"] = csb_reporter,
	["Skin 2"] = ig_paper,
	["Skin 3"] = korlieut_01,
	["Skin 4"] = bankman,
  },
    ["Uniforme Motorista de Onibus"] = {
    _config = { permissions = {"onibus.cloakroom"} },
    ["Skin 1"] = andreas,
	["Skin 2"] = barry,
	["Skin 3"] = baygor
  },
    ["Uniforme prf"] = {
    _config = { permissions = {"prf.cloakroom"} },
  ["Uniforme prf"] = uniforme_prf,  
  }
}

cfg.cloakrooms = {
  {"Uniforme delegado",450.76196289063,-974.14392089844,30.68957901001},---prf
  {"Uniforme prf",-449.00964355469,6015.482421875,31.716388702393},---prf
  {"Uniforme Motorista de Onibus", -328.38424682617,-1007.8889770508,30.38508605957},--bus
  {"carteiro",472.97729492188,-1952.4155273438,24.569232940674},----------------------------carteiro
  {"limpador_de_piscina",497.78103637695,199.14653015137,104.74494934082},-------------------limpador_de_piscina
  {"lixeiro",-465.49124145508,-1709.2236328125,18.735975265503},   -- LIXEIRO
  {"motoristabancario",-338.76171875,-972.93182373047,31.080617904663},-- MOTORISTA BANCARIO
  {"Uniforme motoboy", 140.68260192871,-1461.2135009766,29.357044219971}, -- MOTO BOY
  {"Uniforme bope", 139.31167602539,-736.06536865234,258.15209960938},     -- BOPE
  {"Uniforme Advogado",-589.49383544922,-706.19000244141,36.27938079834}, -- ADVOGADO  
  {"Policia Civil", 459.71633911133,-988.71325683594,30.68957901001},-----NOVO
  {"Bombeiro",1192.5698242188,-1474.3294677734,34.859539031982}, 
  {"Uniforme Prisioneiro",460.41949462891,-991.61968994141,24.91487121582},
  {"Uniforme Mecanico",474.02072143555,-1310.9348144531,29.225872039795} 
}

return cfg
