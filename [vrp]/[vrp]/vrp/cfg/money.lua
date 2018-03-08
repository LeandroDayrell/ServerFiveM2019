
local cfg = {}

-- start wallet/bank values
cfg.open_wallet = 200
cfg.open_bank = 50
cfg.open_dinheirosujo = 0
cfg.open_bankdinheirosujo = 0

-- money display css
cfg.display_css = [[
.div_money{

  font-family: 'pricedown';
  position: absolute;
  top: 100px;
  right: 33px;
  font-size: 1.9em;
  color: white;
 -webkit-font-smoothing: antialiased
  color: white;
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.80);
}

.div_money .symbol{
  font-family: 'pricedown';
  font-size: 1em;
  color: #00ac51; 
 -webkit-font-smoothing: antialiased
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.90);
}

.div_dinheirosujo{

  font-family: 'pricedown';
  position: absolute;
  top: 126px;
  right: 33px;
  font-size: 1.9em;
  color: white;
 -webkit-font-smoothing: antialiased
  color: white;
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.80);
}

.div_dinheirosujo .symbol{
  font-family: 'pricedown';
  font-size: 1em;
  color: #940311; 
 -webkit-font-smoothing: antialiased
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.90);
}

.div_bmoney{
  font-family: 'pricedown';
  position: absolute;
  top: 150px;
  right: 33px;
  font-size: 1.9em;
  color: white;
 -webkit-font-smoothing: antialiased
  color: white;
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.80);
}

.div_bmoney .symbol{
  font-size: 0.8em;
  content:url("http://i.imgur.com/8v0Ir5I.png"); 
  color: #0051ac; 
  width:23px;
  height:13px;
}

.div_bdinheirosujo .symbol{
  font-size: 0.8em;
  content:url("https://i.imgur.com/2NKZ37Z.jpg"); 
  color: #0051ac; 
  width:23px;
  height:13px;
}

.div_bdinheirosujo{
  font-family: 'pricedown';
  position: absolute;
  top: 172px;
  right: 33px;
  font-size: 1.9em;
  color: white;
 -webkit-font-smoothing: antialiased
  color: white;
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.80);
}

 
]]

return cfg
