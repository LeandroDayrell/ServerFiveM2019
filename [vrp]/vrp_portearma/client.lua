local options = {
    x = 0.1,
    y = 0.2,
    width = 0.2,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "Porte de Arma",
    menu_subtitle = "",
    color_r = 0,
    color_g = 128,
    color_b = 255,
}
-- -1770.2100830078,2993.0822753906,37.669731140137
local portearmaped = {
  {type=4, hash=0xc99f21c4, x=-1769.8341064453, y=2993.4760742188, z=36.675977325439, a=3374176},
}

local portearmapedpos = {
	{ ['x'] = -1770.2100830078, ['y'] = 2993.0822753906, ['z'] = 37.669731140137 },
}

--[[Locals]]--

local portearma_location = {-1770.2100830078, 2993.0822753906, 37.669731140137}

--[[Functions]]--

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end





function obterporte()
	TriggerServerEvent('portearma:pagar')
end

Citizen.CreateThread(function()

  RequestModel(GetHashKey("a_m_y_business_01"))
  while not HasModelLoaded(GetHashKey("a_m_y_business_01")) do
    Wait(1)
  end

  RequestAnimDict("mini@strip_club@idles@bouncer@base")
  while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
    Wait(1)
  end

 	    -- Spawn the DMV Ped
  for _, item in pairs(portearmaped) do
    dmvmainped =  CreatePed(item.type, item.hash, item.x, item.y, item.z, item.a, false, true)
    SetEntityHeading(dmvmainped, 137.71)
    FreezeEntityPosition(dmvmainped, true)
	SetEntityInvincible(dmvmainped, true)
	SetBlockingOfNonTemporaryEvents(dmvmainped, true)
    TaskPlayAnim(dmvmainped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

local talktodmvped = true
--DMV Ped interaction
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local pos = GetEntityCoords(GetPlayerPed(-1), false)
		for k,v in ipairs(portearmapedpos) do
			if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 1.0)then
				DisplayHelpText("Pressione ~INPUT_CONTEXT~ para interagir com o ~y~NPC")
				if(IsControlJustReleased(1, 38))then
						if talktodmvped then
						    Notify("~b~Bem vindo ao ~h~Exército!")
						    Citizen.Wait(500)
							DMVMenu()
							Menu.hidden = false
							talktodmvped = false
						else
							talktodmvped = true
						end
				end
				Menu.renderGUI(options)
			end
		end
	end
end)

------------
------------ DRAW MENUS
------------
function DMVMenu()
	ClearMenu()
    options.menu_title = "Exército"
	Menu.addButton("Obter um porte de arma","obterporte",nil)
    Menu.addButton("Sair","CloseMenu",nil)
end

function CloseMenu()
		Menu.hidden = true
end

function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, true)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end


Citizen.CreateThread(function()
	pos = portearma_location
	local blip = AddBlipForCoord(pos[1],pos[2],pos[3])
	SetBlipSprite(blip,110)
	SetBlipColour(blip,11)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Porte de Arma')
	EndTextCommandSetBlipName(blip)
	SetBlipAsShortRange(blip,true)
	SetBlipAsMissionCreatorBlip(blip,true)
  vRPclient.addMarker(source,{pos[1],pos[2]+2,pos[3]-1,0.7,0.7,0.5,0,255,125,125,150})

end)
