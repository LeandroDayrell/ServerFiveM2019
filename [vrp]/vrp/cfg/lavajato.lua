
local cfg = {}

-- minimum capital to open a lavajato
cfg.minimum_capital = 100000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 24*60

-- commerce chamber {blipid,blipcolor}
cfg.blip = {500,1} 

-- positions of commerce chambers
cfg.commerce_chambers = {
  {-699.50634765625,-923.25982666016,19.013917922974},
  {170.6946105957,-1723.30859375,29.391700744629},
  {43.857704162598,-1394.6031494141,29.977926254272},
}

return cfg
