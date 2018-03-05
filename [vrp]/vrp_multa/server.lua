Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")
cfg = module("vrp_multa", "cfg/multa")
vRProb = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Tunnel.bindInterface("vrp_multa",vRProb)
Proxy.addInterface("vrp_multa",vRProb)
ROBclient = Tunnel.getInterface("vrp_multa")


RegisterServerEvent('cobrarMulta')
AddEventHandler('cobrarMulta', function()

	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local cops = vRP.getUsersByPermission(cfg.cops)
	local multa = 99
    if vRP.hasPermission(user_id,cfg.cops) then
    else
	vRP.tryFullPayment(user_id,multa)
	end
end)