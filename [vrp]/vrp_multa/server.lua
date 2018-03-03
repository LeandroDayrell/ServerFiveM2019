
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

-- load global and local languages
local Luang = module("vrp", "lib/Luang")
local Lang = Luang()
Lang:loadLocale(lcfg.lang, module("vrp", "cfg/lang/"..lcfg.lang) or {})
Lang:loadLocale(lcfg.lang, module("vrp_multa", "cfg/lang/"..lcfg.lang) or {})
lang = Lang.lang[lcfg.lang]

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Mclient = Tunnel.getInterface("vrp_multa")






local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_multa")

RegisterServerEvent('cobrarMulta')
AddEventHandler('cobrarMulta', function()

	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local cops = vRP.getUsersByPermission(cfg.cops)
	local multa = 99
    if vRP.hasPermission(user_id,cfg.cops) then
    else
	vRP.tryFullPayment(user_id,multa)
	vrp
end
end)