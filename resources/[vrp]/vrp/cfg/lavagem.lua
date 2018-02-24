
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
  {1462.8370361328,-782.68902587891,104.16160583496},
  {794.94415283203,-217.4128112793,79.330581665039},
  {-854.92791748047,673.74481201172,159.90536499023},
  {356.88934326172,-1850.1040039063,38.734081268311},
}

return cfg
