
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 1000000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 24*60

-- commerce chamber {blipid,blipcolor}
cfg.blip = {500,1} 

-- positions of commerce chambers
cfg.commerce_chambers = {
  {1560.8890380859,-1835.3432617188,92.662887573242}, -- FAVELA PETROLEO CV
  {794.94415283203,-217.4128112793,79.330581665039},  -- FAVELA BR ADA
  {-854.92791748047,673.74481201172,159.90536499023}, -- FAVELA RICA TCP
  {-17.819309234619,-1867.8327636719,24.951789855957}, -- FAVELA SAN ANDREAS TCA
}

return cfg
