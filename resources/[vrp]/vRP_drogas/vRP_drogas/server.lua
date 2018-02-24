local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_drogas")

RegisterServerEvent('drugs:item')
AddEventHandler('drugs:item', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	if not vRP.tryGetInventoryItem({user_id,"baseado",1,notify}) then
		TriggerClientEvent('done', player)
		TriggerClientEvent('cancel', player)
	else
		TriggerClientEvent('cancel', player)
	end
end)

RegisterServerEvent('drugs:money')
AddEventHandler('drugs:money', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local cant = math.random(100,150)
	vRP.giveInventoryItem({user_id,"dirty_money",cant,notify})
end)