local TeleportFromTo = {
	["Policia Militar - COPOM - BOPE"] = {
		positionFrom = { ['x'] = 442.02203369141, ['y'] = -977.77301025391, ['z'] = 30.689603805542, nom = "COPOM - BOPE"},
		positionTo = { ['x'] = 442.02203369141, ['y'] = -977.77301025391, ['z'] = 30.689603805542, nom = ""},
	},	
	["Policia Militar - Arsenal- BOPE"] = {
		positionFrom = { ['x'] = 458.43692016602, ['y'] = -979.39678955078, ['z'] = 30.689599990845, nom = "Arsenal - Policia BOPE"},
		positionTo = { ['x'] = 458.43692016602, ['y'] = -979.39678955078, ['z'] = 30.689599990845, nom = ""},
	},
    ["ELEPONTO"] = {
	   positionFrom = { ['x'] = 356.04583740234, ['y'] = -597.63043212891, ['z'] = 28.777612686157, nom = "Entrar - Ele porto samu"}, 
	   positionTo = { ['x'] = 339.66510009766, ['y'] = -584.44494628906, ['z'] = 74.165740966797, nom = "Sair - Ele porto samu"},
	},
	["Pista de corrida"] = {
	   positionFrom = { ['x'] = -50.484031677246, ['y'] = -1090.2028808594, ['z'] = 26.422355651855, nom = "Entrar - Pista de corrida"}, 
	   positionTo = { ['x'] = 1729.4901123047, ['y'] = 3320.2272949219, ['z'] = 41.223495483398, nom = "Sair - Pista de corrida"},
	},
	["Lavagem 1 40% Favela"] = {
		positionFrom = { ['x'] = 360.80770874023, ['y'] = -1850.1646728516, ['z'] = 28.02691078186, nom = "Entrar - Lavagem De Dinheiro"},
		positionTo = { ['x'] = 356.02044677734, ['y'] = -1853.6613769531, ['z'] = 38.730449676514, nom = "Sair - Lavagem De Dinheiro"},
	},
	["Lavagem 2 40% Favela"] = {
		positionFrom = { ['x'] = 795.49810791016, ['y'] = -218.65570068359, ['z'] = 66.114479064941, nom = "Entrar - Lavagem De Dinheiro"},
		positionTo = { ['x'] = 787.23156738281, ['y'] = -209.78819274902, ['z'] = 79.330581665039, nom = "Sair - Lavagem De Dinheiro"},
    },
    ["Lavagem 3 40% Favela"] = {
		positionFrom = { ['x'] = 1441.6030273438, ['y'] = -810.21228027344, ['z'] = 102.17218017578, nom = "Entrar - Lavagem De Dinheiro"},
		positionTo = { ['x'] = 1445.630859375, ['y'] = -809.24078369141, ['z'] = 112.33567047119, nom = "Sair - Lavagem De Dinheiro"},
	},
	["Lavagem 4 40% Favela"] = {
		positionFrom = { ['x'] = -866.15386962891, ['y'] = 668.65002441406, ['z'] = 135.7872467041, nom = "Entrar - Lavagem De Dinheiro"},
		positionTo = { ['x'] = -857.33715820313, ['y'] = 670.17041015625, ['z'] = 159.90385437012, nom = "Sair - Lavagem De Dinheiro "},
    },
    ["Cocaina"] = {
		positionFrom = { ['x'] = 1411.7082519531, ['y'] = 1147.1169433594, ['z'] = 114.3341217041, nom = "Entrar - Fabricar Cocaina"},
		positionTo = { ['x'] = 1408.0523681641, ['y'] = 1147.2625732422, ['z'] = 114.33359527588, nom = "Sair - Fabricar Cocaina"},
	},
	["Corpos"] = {
		positionFrom = { ['x'] = 230.97947692871, ['y'] = -1360.5107421875, ['z'] = 28.651819229126, nom = "Entrar - Extrair Orgaos no IML"},
		positionTo = { ['x'] = 236.07377624512, ['y'] = -1372.0689697266, ['z'] = 22.015092849731, nom = "Sair - Saida Do IML"},
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