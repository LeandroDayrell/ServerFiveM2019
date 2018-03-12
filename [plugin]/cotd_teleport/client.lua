local TeleportFromTo = {
	---------- BOPE
	["Garagem - Bope"] = {
	   positionFrom = { ['x'] = 110.99529266357, ['y'] = -734.64471435547, ['z'] = 33.133224487305, nom = "Bope"},
	   positionTo = { ['x'] = 115.20038604736, ['y'] = -741.78411865234, ['z'] = 258.15209960938, nom = "Garagem"},
	},
	["Entrada - Bope"] = {
	   positionFrom = { ['x'] = 156.67526245117, ['y'] = -757.97729492188, ['z'] = 258.15188598633, nom = "Recepção"},
	   positionTo = { ['x'] = 136.10906982422, ['y'] = -761.7353515625, ['z'] = 45.752010345459, nom = "Bope"},
	},
	["Entrada - Garagem"] = {
	   positionFrom = { ['x'] = 139.02188110352, ['y'] = -762.57849121094, ['z'] = 45.75203704834, nom = "Garagem"},
	   positionTo = { ['x'] = 114.36162567139, ['y'] = -735.36999511719, ['z'] = 33.133190155029, nom = "Recepção"},
	},
	
	["Bope - Heliponto"] = {
	   positionFrom = { ['x'] = 117.50189971924, ['y'] = -736.56060791016, ['z'] = 258.15243530273, nom = "Heliponto"},
	   positionTo = { ['x'] = -68.625274658203, ['y'] = -810.55493164063, ['z'] = 326.17416381836, nom = "Bope"},
	},
	["IML"] = {
	   positionFrom = { ['x'] = 231.24285888672, ['y'] = -1360.5529785156, ['z'] = 28.651815414429, nom = "Entrar - IML"}, 
	   positionTo = { ['x'] = 239.42402648926, ['y'] = -1361.1176757813, ['z'] = 24.537790298462, nom = "Sair - IML"},
	},
    ["ELEPONTO"] = {
	   positionFrom = { ['x'] = 356.04583740234, ['y'] = -597.63043212891, ['z'] = 28.777612686157, nom = "Entrar - Ele porto samu"}, 
	   positionTo = { ['x'] = 339.66510009766, ['y'] = -584.44494628906, ['z'] = 74.165740966797, nom = "Sair - Ele porto samu"},
	},
	["Pista de corrida"] = {
	   positionFrom = { ['x'] = -50.484031677246, ['y'] = -1090.2028808594, ['z'] = 26.422355651855, nom = "Entrar - Pista de corrida"}, 
	   positionTo = { ['x'] = 1729.4901123047, ['y'] = 3320.2272949219, ['z'] = 41.223495483398, nom = "Sair - Pista de corrida"},
	},
}

Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		
		for k, j in pairs(TeleportFromTo) do
		
			--msginf(k .. " " .. tostring(j.positionFrom.x), 15000)
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 150.0)then
				DrawMarker(1, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.100, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("".. j.positionFrom.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
			
			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 150.0)then
				DrawMarker(1, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.100, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("".. j.positionTo.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
		end
	end
end)