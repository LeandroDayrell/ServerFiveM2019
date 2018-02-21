--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

-- this module make paycheck and bill to pay for users who have group permission

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local cfg = module("vrp_paycheckdinheirosujo", "cfg/paycheckdinheirosujo")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

function paycheckdinheirosujo_giver()
  for k,v in pairs(cfg.paycheckdinheirosujo) do
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
	  local paycheckdinheirosujo = v
      local player = vRP.getUserSource(user_id)
	  if cfg.bankdinheirosujo then
		vRP.giveBankDinheirosujo(user_id,paycheckdinheirosujo)
	  else
		vRP.giveDinheirosujo(user_id,paycheckdinheirosujo)
	  end	
	  vRPclient.notifyPicture(player,cfg.paycheckdinheirosujo_picture, 9, cfg.paycheckdinheirosujo_title_picture, false, cfg.message_paycheckdinheirosujo..paycheckdinheirosujo..cfg.post)
	end	
  end
  SetTimeout(1000*60*cfg.minutes_paycheckdinheirosujo, function()
	paycheckdinheirosujo_giver()
  end)
end

Citizen.CreateThread(function()
  paycheckdinheirosujo_giver()
end)