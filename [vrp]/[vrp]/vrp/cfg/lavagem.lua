
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
  {1227.6488037109,-570.26208496094,69.38639831543},  -- FAVELA BR ADA
  {-855.84478759766,646.37432861328,132.12269592285}, -- FAVELA RICA TCP
  {-17.819309234619,-1867.8327636719,24.951789855957}, -- FAVELA SAN ANDREAS TCA
}

return cfg
