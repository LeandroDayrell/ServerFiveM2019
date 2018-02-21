
local cfg = {}

-- define the first spawn position/radius of the player (very first spawn on the server, or after death)
cfg.spawn_enabled = true -- set to false to disable the feature
cfg.spawn_position = {-835.56414794922,-103.69761657715,28.185361862183} -- LOCAL DE SPAWN
cfg.spawn_radius = 1

-- customization set when spawning for the first time
-- see https://wiki.fivem.net/wiki/Peds
-- mp_m_freemode_01 (male)
-- mp_f_freemode_01 (female)
cfg.default_customization = {
  model = "a_m_y_beachvesp_01" 
}

-- init default ped parts
for i=0,19 do
  cfg.default_customization[i] = {0,0}
end

cfg.clear_phone_directory_on_death = true
cfg.lose_aptitudes_on_death = true

return cfg
