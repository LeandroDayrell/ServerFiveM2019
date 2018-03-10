--[[BASE]]--
MySQL = module("vrp_mysql", "MySQL")
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_portearma")

--[[LANG]]--
local Lang = module("vrp", "lib/Lang")
local cfg = module("vrp", "cfg/base")
local lang = Lang.new(module("vrp", "cfg/lang/"..cfg.lang) or {})

--[[SQL]]--
MySQL.createCommand("vRP/portearma_column", "ALTER TABLE vrp_users ADD IF NOT EXISTS PorteArma varchar(50) NOT NULL default 'Required'")
MySQL.createCommand("vRP/portearma_success", "UPDATE vrp_users SET PorteArma='Passed' WHERE id = @id")
MySQL.createCommand("vRP/portearma_search", "SELECT * FROM vrp_users WHERE id = @id AND PorteArma = 'Passed'")

-- init
MySQL.query("vRP/portearma_column")

--[[Porte de Arma]]--

RegisterServerEvent("portearma:pagar")
AddEventHandler("portearma:pagar", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	MySQL.query("vRP/portearma_search", {id = user_id}, function(rows, affected)
		if #rows > 0 then
		vRPclient.notify(player,{"Você já possui um ~g~porte de arma"})
		else
			if vRP.tryPayment({user_id,30000}) then
						MySQL.query("vRP/portearma_success", {id = user_id})
						vRPclient.notify(player,{"~g~Porte de arma adquirido com sucesso."})
			else
				vRPclient.notify(player,{"~r~Dinheiro insuficiente."})
			end
		end
	end)
end)

--[[POLICE MENU]]--
local choice_asklc = {function(player,choice)
  vRPclient.getNearestPlayer(player,{10},function(nplayer)
    local nuser_id = vRP.getUserId({nplayer})
    if nuser_id ~= nil then
      vRPclient.notify(player,{"Perguntando sobre o porte de arma..."})
      vRP.request({nplayer,"Deseja mostrar seu porte de arma?",15,function(nplayer,ok)
        if ok then
          MySQL.query("vRP/portearma_search", {id = nuser_id}, function(rows, affected)
            if #rows > 0 then
			  vRPclient.notify(player,{"Porte de Arma: ~g~Tudo Certo"})
			else
			  vRPclient.notify(player,{"Porte de Arma: ~r~Não obtido"})
            end
          end)
        else
          vRPclient.notify(player,{lang.common.request_refused()})
        end
      end})
    else
      vRPclient.notify(player,{lang.common.no_player_near()})
    end
  end)
end, "Verifique o porte de arma do jogador mais próximo."}

vRP.registerMenuBuilder({"police", function(add, data)
  local player = data.player

  local user_id = vRP.getUserId({player})
  if user_id ~= nil then
    local choices = {}

    -- build police menu
    if vRP.hasPermission({user_id,"police.askid"}) then
       choices["Checar Porte"] = choice_asklc
    end

    add(choices)
  end
end})
