local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local cfg = module("vrp_paycheck", "cfg/paycheck")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

function paycheck_giver()
  for k,v in pairs(cfg.paycheck) do
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
	  local paycheck = v
      local player = vRP.getUserSource(user_id)
	  if cfg.bank then
		vRP.giveBankMoney(user_id,paycheck)
	  else
		vRP.giveMoney(user_id,paycheck)
	  end	
	  vRPclient.notifyPicture(player,cfg.paycheck_picture, 9, cfg.paycheck_title_picture, false, cfg.message_paycheck..paycheck..cfg.post)
	end	
  end
  SetTimeout(1000*60*cfg.minutes_paycheck, function()
	paycheck_giver()
  end)
end

Citizen.CreateThread(function()
  paycheck_giver()
end)

