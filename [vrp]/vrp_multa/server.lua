local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_multa")

RegisterServerEvent('cobrarMulta')
AddEventHandler('cobrarMulta', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local multa = 1000
	vRP.tryFullPayment({user_id,multa})
end)
