local savezone = false
local radis = 150
Citizen.CreateThread(function()
	while true do
		local ply = GetPlayerPed(-1)
		local x1, y1, z1 = table.unpack(GetEntityCoords(ply, true))
		local distance =  math.floor(GetDistanceBetweenCoords(-266.94555664063,-965.48681640625,31.223432540894,  x1, y1, z1,  true))
		if distance <= radis then
			savezone = true
		else
			savezone = false
		end
		
		if savezone then
			for ped in EnumeratePeds() do
				if DoesEntityExist(ped) then
					for i,model in pairs(cfg.peds) do
						if (GetEntityModel(ped) == GetHashKey(model)) then
							veh = GetVehiclePedIsIn(ped, false)
							SetEntityAsNoLongerNeeded(ped)
							SetEntityCoords(ped,10000,10000,10000,1,0,0,1)
							if veh ~= nil then
								SetEntityAsNoLongerNeeded(veh)
								SetEntityCoords(veh,10000,10000,10000,1,0,0,1)
							end
						end
					end
				end
			end
			SetEntityHealth(ply,200)
		end
		Citizen.Wait(1000)
	end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1) 
		
        for ped in EnumeratePeds() do
            if DoesEntityExist(ped) then
				for i,model in pairs(cfg.peds) do
					if (GetEntityModel(ped) == GetHashKey(model)) then
						veh = GetVehiclePedIsIn(ped, false)
						SetEntityAsNoLongerNeeded(ped)
						SetEntityCoords(ped,10000,10000,10000,1,0,0,1)
						if veh ~= nil then
							SetEntityAsNoLongerNeeded(veh)
							SetEntityCoords(veh,10000,10000,10000,1,0,0,1)
						end
					end
				end
				for i,model in pairs(cfg.noguns) do
					if (GetEntityModel(ped) == GetHashKey(model)) then
						RemoveAllPedWeapons(ped, true)
					end
				end
				for i,model in pairs(cfg.nodrops) do
					if (GetEntityModel(ped) == GetHashKey(model)) then
						SetPedDropsWeaponsWhenDead(ped,false) 
					end
				end
			end
		end
		--[[ WORK IN PROGESS // DOES NOT WORK
        for veh in EnumerateVehicles() do
            if DoesEntityExist(veh) then
				for i,model in pairs(cfg.vehs) do
					if (GetEntityModel(veh) == GetHashKey(model)) then
						SetEntityAsNoLongerNeeded(veh)
						SetEntityCoords(veh,10000,10000,10000,1,0,0,1)
					end
				end
			end
		end
		]]
    end
end)



Citizen.CreateThread(function()
    while true 
        do
         -- These natives has to be called every frame.
        SetPedDensityMultiplierThisFrame(cfg.density.peds)
        SetScenarioPedDensityMultiplierThisFrame(cfg.density.peds, cfg.density.peds)
        SetVehicleDensityMultiplierThisFrame(cfg.density.vehicles)
        SetRandomVehicleDensityMultiplierThisFrame(cfg.density.vehicles)
        SetParkedVehicleDensityMultiplierThisFrame(cfg.density.vehicles)
        Citizen.Wait(0)
    end
end)



