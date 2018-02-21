------------------
-- CONFIG START --
------------------

-- Messages
startText = "pressione ~g~E ~w~para iniciar um ~g~Rota do onibus ~w~a partir de ~g~%s~w~"
startTextSpecial = "pressione ~g~E ~w~para começar um ~g~Rota expressa ~w~a partir de ~g~%s~w~"
pickupText = "pressione ~g~E ~w~pegar ~g~%s ~w~a partir de ~g~%s~w~"
invalidVehicleText = "Voce precisa de um ~g~ONIBUS ~w~para fazer isso"
tooLowTierText = "As rotas expressas são reservadas para ~g~Treinadores ~w~so"
engineRunningText = "Totalmente ~r~PARE ~w~antes do embarque / desembarque"

xOutOfY = "~w~[~y~%i~w~/~y~%i~w~]"

vehicleFullMessage = "Seu veiculo e ~r~CHEIO~w~"
capacityMessage = "Atual ~g~%s " .. xOutOfY
continueMessage = "Continuar ~g~%s ~w~rota " .. xOutOfY

startRouteMessage = "Complete a ~g~%s ~w~rota"
jobDoneMessage = "Acabado ~g~%s ~w~rota"

-- Methods
engineNeedsToBeOff = true 

-- Map Blips    -314.68298339844,-1004.5033569336,30.385089874268
job_blips = {
    {name = "Serviço de onibus", x = -314.68298339844, y = -1004.5033569336},
    --{name = "Serviço de onibus", x = 1955.0, y = 3771.0},
    --{name = "Serviço de onibus", x = -362.9, y = 6069.8},
    --{name = "Serviço de onibus", x = -2344.5, y = 3246.4},
}

-- Blip Settings
job_blip_settings = {
    start_blip = {id = 513, color = 38},
    destination_blip = {id = 420, color = 4},
    marker = {r = 0, g = 150, b = 255, a = 200},
    marker_special = {r = 255, g = 255, b = 0, a = 200},
}

-- Locations
ls_routes = {
    {
        {name = "LSIA Terminal 2", 		x = -1048.877930, y = -2540.111572, z = 12.505210},
        {name = "Maze Bank Arena", 		x = -307.695801, y = -1844.940430, z = 23.845625},
        {name = "Strawberry Avenue", 	x = -43.776791, y = -1648.477661, z = 28.033178},
        {name = "Carson Avenue", 		x = 50.928295, y = -1536.593506, z = 28.018265},
        {name = "Adam's Apple Blv", 	x = 98.416206, y = -1055.010620, z = 28.118307},
        {name = "San Andreas Avenue", 	x = 115.008423, y = -784.036377, z = 30.126572},
        {name = "San Vitus Blvd", 		x = -256.629272, y = -330.119690, z = 28.699272},
        {name = "Boulevard Del Perro", 	x = -490.618530, y = 20.407391, z = 43.791027},
        {name = "Strangeways Drive", 	x = -693.450562, y = -5.167409, z = 37.019169},
        {name = "Mad Wayne Thunder Dr", x = -931.669128, y = -126.633087, z = 36.415554},
        {name = "Marathon Avenue", 		x = -1047.878540, y = -389.459473, z = 36.419994},
        {name = "Rockford Hills", 		x = -679.639771, y = -376.881226, z = 33.043865},
        {name = "Ginger Street", 		x = -652.388367, y = -607.065369, z = 32.059444},
        {name = "Vespucci Blvd", 		x = -558.416321, y = -846.186951, z = 26.312037},
        {name = "La Puerta Fwy", 		x = -250.537796, y = -883.167053, z = 29.415934},
        {name = "Innocence Blvd", 		x = -302.779999, y = -1476.822632, z = 29.369450},
    },
    {
        {name = "Textile City", x = 307.135803, y = -766.019043, z = 28.227528},
        {name = "Strawberry Metro Station", x = 261.568085, y = -1217.424927, z = 28.424841},
        {name = "Davis Sherrif's Office", x = 364.583069, y = -1568.484009, z = 28.203512},
        {name = "Billingsgate Motel", x = 574.867859, y = -1734.191040, z = 28.182583},
        {name = "Little Bighorn Ave", x = 774.118408, y = -1752.040039, z = 28.409100},
        {name = "Popular Street", x = 879.431213, y = -1766.265015, z = 28.894323},
        {name = "Amarillo Vista", x = 1303.761475, y = -1648.289551, z = 50.393467},
        {name = "El Burro Heights Gas Station", x = 1191.970215, y = -1421.047852, z = 34.044270},
        {name = "Olympic Fwy", x = 806.741638, y = -1353.140259, z = 25.286720},
        {name = "Popular Street", x = 785.882019, y = -775.321411, z = 25.329002},
        {name = "Occupation Avenue", x = 428.806915, y = -359.720764, z = 46.116802},
        {name = "Power Street", x = 160.195572, y = -372.077209, z = 41.672024},
        {name = "Union Depository", x = 41.333294, y = -706.174377, z = 43.126556},
        {name = "Downtown Parking Garage", x = -335.592316, y = -683.291138, z = 31.849171},
        {name = "Alta Street", x = -86.832825, y = -652.732300, z = 35.105892},
        {name = "Low Power Street", x = 70.441124, y = -627.019653, z = 30.579842},
        {name = "Vespucci Blvd", x = 62.284081, y = -996.830688, z = 28.256859},
    },
    {   
        {name = "Vespucci Beach", x = -1456.489258, y = -967.370056, z = 6.261691},
        {name = "Vespucci Beach", x = -1352.111206, y = -1113.946533, z = 3.407488},
        {name = "Vespucci Beach", x = -1321.315552, y = -1292.585571, z = 3.940287},
        {name = "Vespucci Beach", x = -1286.420532, y = -1396.484009, z = 3.523031},
        {name = "Aguja Street", x = -1167.743652, y = -1472.403931, z = 3.280961},
        {name = "Melanoma Street", x = -1087.516235, y = -1586.963745, z = 3.321031},
        {name = "La Puerta Apartments", x = -944.724731, y = -1527.015015, z = 4.056648},
        {name = "La Puerta Apartments", x = -993.357361, y = -1441.655884, z = 4.072592},
        {name = "Vista Del Mar Apartments", x = -1037.417603, y = -1532.505371, z = 4.053168},
        {name = "The Wiseroy", x = -830.088196, y = -1218.166382, z = 5.931358},
        {name = "La Puerta Marina", x = -800.468201, y = -1332.293945, z = 3.997653},
        {name = "Higgins Helitours", x = -716.186951, y = -1405.214233, z = 3.997248},
        {name = "Little Seoul Gas Station", x = -524.743774, y = -1198.608643, z = 17.541819},
        {name = "Little Seoul Tram Station", x = -521.956665, y = -1302.051392, z = 27.012049},
        {name = "La Puerta Gas Station", x = -322.942200, y = -1443.668823, z = 29.714195},
        {name = "Carson Avenue", x = -21.008894, y = -1378.070068, z = 28.275986},
        {name = "Olympic Fwy Underpass", x = 77.380333, y = -1214.512207, z = 28.123667},
        {name = "Adam's Apple Blvd", x = 95.186195, y = -1061.527832, z = 28.265455},
        {name = "San Andreas Avenue", x = 115.118439, y = -783.993042, z = 30.291632},
        {name = "Little Seoul Parking Complex", x = -466.381317, y = -649.065796, z = 31.306229},
        {name = "Ginger Street", x = -770.386658, y = -647.734436, z = 28.840813},
        {name = "Weazel Plaza", x = -931.685364, y = -465.941254, z = 36.085449},
        {name = "Lifeinvader HQ", x = -1077.113647, y = -264.329651, z = 36.719830},
        {name = "Morningwood Blvd", x = -1280.407349, y = -321.272278, z = 35.672688},
        {name = "North Rockford Drive", x = -1417.084595, y = -399.028290, z = 35.194302},
        {name = "Prosperity Street", x = -1525.448242, y = -465.898956, z = 34.293213},
        {name = "Bay City Avenue", x = -1538.372559, y = -683.898926, z = 27.764669},
        {name = "Del Perro Pier", x = -1629.170898, y = -999.052368, z = 12.034500},
    },
    {
        {name = "Pillbox Hill Medical Center", x = 290.073639, y = -588.705994, z = 42.999905},
        {name = "Alta", x = 393.089783, y = -198.228836, z = 59.249481},
        {name = "Vinewood Plaza", x = 546.343018, y = 154.992188, z = 98.938354},
        {name = "Vinewood Hills Arena", x = 707.297607, y = 661.271912, z = 128.741226},
        {name = "North Conker Avenue", x = 340.571075, y = 473.769196, z = 149.536407},
        {name = "Sisyphus Theater", x = 233.522186, y = 1175.608643, z = 225.289536},
        {name = "Lake Vinewood", x = -75.519508, y = 893.577209, z = 235.406143},
        {name = "North Sheldon Avenue", x = -718.873962, y = 960.467590, z = 237.414627},
        {name = "Normandy Drive", x = -918.196106, y = 793.625732, z = 183.889343},
        {name = "Hillcrest Avenue", x = -917.567871, y = 697.311035, z = 151.466461},
        {name = "Hillcrest Avenue", x = -686.764465, y = 604.516663, z = 143.481186},
        {name = "Normandy Drive", x = -629.844666, y = 685.028870, z = 150.348328},
        {name = "Didion Drive", x = -510.327759, y = 569.082642, z = 118.609016},
        {name = "Hillcrest Ridge Access Road", x = -696.260254, y = 489.169250, z = 109.245049},
        {name = "Dunstable Lane", x = -837.081909, y = 292.296692, z = 86.154709},
        {name = "The Generic", x = -481.763062, y = 224.086395, z = 82.916214},
        {name = "Eclipse Lodge", x = -256.527252, y = 12.497521, z = 52.772953},
        {name = "Cancer Way", x = -296.263885, y = -271.570099, z = 31.390156},
        {name = "Daily Globe International", x = -286.271729, y = -616.369568, z = 33.201347},
        {name = "Power Street", x = 119.872200, y = -812.574402, z = 30.998062},
    }
}

-- Job Start markers
job_starts = {
    {name = "Los Santos Bus Service", x = -314.68298339844, y = -1004.5033569336, z = 30.385089874268, tier = 1, routes = ls_routes},
    --{name = "Los Santos Coach Service", x = 461.670441, y = -606.164185, z = 27.496000, tier = 3, routes = coach_routes},
    --{name = "Sandy Shores Bus Service", x = 1955.0, y = 3771.0, z = 31.2, tier = 1, routes = sandy_routes},
    --{name = "Paleto Bay Bus Service", x = -362.9, y = 6069.8, z = 30.5, tier = 1, routes = paleto_routes},
    --{name = "Zancudo Start", x = -2344.502930, y = 3246.406982, z = 32.628830, tier = 1, routes = zancudo_routes},
}

-- Vehicles plus tiers     -314.68298339844,-1004.5033569336,30.385089874268
job_vehicles = {
    --{name = "RENTALBUS", tier = 1},
    {name = "BUS", tier = 1},
    --{name = "AIRBUS", tier = 2},
    --{name = "IKARUS1", tier = 2},
    --{name = "IKARUS2", tier = 3},
    --{name = "IKARUS3", tier = 4},
    --{name = "COACH", tier = 5},
}

-- Localized names for peds
ped_names = {
    ["default"] = "Commuters",
    ["coach"] = "Passengers",
}

-- Payment multiplier for ped
ped_payment = {
    ["default"] = 1.0,
    ["coach"] = 1.5,
}

-- Models peds can use (chosen randomly)
ped_models = {
    "A_M_Y_GenStreet_01",
    "A_M_M_Business_01",
    "A_M_Y_Hiker_01",
}
----------------
-- CONFIG END --
----------------

local debugMarkers = {}

RegisterNetEvent("gd:pos")
AddEventHandler("gd:pos", function(msg)
    local pos = GetEntityCoords(GetPlayerPed(-1))
    TriggerServerEvent("gd:pos", msg, {x = pos.x, y = pos.y, z = pos.z - 1})
    table.insert(debugMarkers, {name = "debug", x = pos.x, y = pos.y, z = pos.z - 1})
end)

RegisterNetEvent("gd_jobs_bus:startJob")
AddEventHandler("gd_jobs_bus:startJob",
    function(start, tier)
        startJob(start, tier)
    end
)

RegisterNetEvent("bus_stopjob")
AddEventHandler("bus_stopjob", function()
        cancelJob()
end)

function getRandomPedModel()
    local mod = ped_models[math.random(#ped_models)]
    return mod
end

function drawMarker(x,y,z,s)
    local marker = job_blip_settings.marker
    if s or false then
        marker = job_blip_settings.marker_special
    end
    DrawMarker(1, x, y, z, 0,0,0,0,0,0,5.0,5.0,2.0,marker.r,marker.g,marker.b,marker.a,0,0,0,0)
end

local current_job = {}

function setNewDestination(pos)
--    if DoesBlipExist(current_job.blip) then RemoveBlip(current_job.blip) end
--    current_job.blip = AddBlipForCoord(pos.x, pos.y, pos.z)
--    setBlipName(current_job.blip, pos.name)
--    SetBlipRoute(current_job.blip, true)
end

function setBlipName(blip, name)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip) 
end

function getRandomLocation(tier)
    local loc = 0
    repeat
        loc = job_pickups[math.random(#job_pickups)]
    until loc.tier <= tier
    return loc
end
    
function generateBlipsFromRoute(route)
    for k,v in next, route do
        local blip = AddBlipForCoord(v.x, v.y, 0)
        SetBlipScale(blip, 0.75)
        SetBlipSprite(blip, job_blip_settings.destination_blip.id)
        SetBlipColour(blip, job_blip_settings.destination_blip.color)
        setBlipName(blip, "(Route) " .. v.name)
        v.blip = blip
    end
end

function table.clone(org)
  return {table.unpack(org)}
end

function startJob(start, tier)
    if isOnJob() then
        cancelJob()
    end
    current_job.previous = start
    current_job.start = start
    current_job.route = start.routes[math.random(#start.routes)]
    current_job.total_stops = #current_job.route
    generateBlipsFromRoute(current_job.route)
    current_job.cargo = {name = ped_names["default"], pay = ped_payment["default"]}
    if tier == 5 then
        current_job.cargo = {name = ped_names["coach"], pay = ped_payment["coach"]}
    end
    current_job.tier = tier
    current_job.fares = 0
    current_job.peds = {}

    setNewDestination(current_job.marker)
    drawMessage(string.format(startRouteMessage, current_job.cargo.name))

end

function createPedsThatEnterVehicle(number)
    local peds = {}
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    local pos = GetEntityCoords(veh)
    local _model = getRandomPedModel()
    local model = GetHashKey(_model)
    RequestModel(model)
    while not HasModelLoaded(model) do Citizen.Wait(1) end
    
    local _peds = 0
    
    print(number)
    
    for _i = 1, GetVehicleMaxNumberOfPassengers(veh) do
        print("_i: ".._i)
        if _peds >= number then break end
        if not DoesEntityExist(GetPedInVehicleSeat(veh, _i)) then 
            print("ped")
            local ped = CreatePed(4, model, pos.x + GetEntityForwardX(veh) * (6 + _peds), pos.y + GetEntityForwardY(veh) * (6 + _peds), pos.z, 0, true, 0)
            TaskEnterVehicle(ped, veh, 1000, _i, 1.0, 3, 0)
            table.insert(peds, ped)
            _peds = _peds + 1
        end
    end  
    return peds
end

function makePedsLeaveTheVehicle(number)
    local _i = 0
    for _i = 1, number do
        if next(current_job.peds) ~= nil then
            local ped = current_job.peds[math.random(#current_job.peds)]
            if DoesEntityExist(ped) then
                TaskLeaveAnyVehicle(ped, 0, 0)
                SetTimeout(3000, function()
                    RemovePedElegantly(ped) 
                end)
            end
        end
    end
end

function pickupJob(id)
    local p = table.remove(current_job.route, id)
    local supply = math.random(p.supply or 3)
    local demand = math.random(p.demand or 5)
    
    print(supply)
    print(demand)
    
    makePedsLeaveTheVehicle(demand)
    RemoveBlip(p.blip)
    p.blip = nil
    
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    local peds = createPedsThatEnterVehicle(supply)    
    local newpeds = 0
    if next(peds) ~= nil then
        for k,v in next, peds do
            newpeds = newpeds + 1
            table.insert(current_job.peds, v)
        end
    end
    
    current_job.fares = current_job.fares + newpeds
    
    TriggerServerEvent("gd_jobs_bus:pickupJob", newpeds, current_job.cargo.pay, current_job.tier)
    if (#current_job.route > 0) then
        drawMessage(string.format(continueMessage, current_job.cargo.name, current_job.total_stops - #current_job.route, current_job.total_stops))
    else
        deliverJob()
    end
end

function deliverJob()    
    TriggerServerEvent("gd_jobs_bus:finishJob", current_job.fares, current_job.cargo.pay, current_job.tier)
    drawMessage(string.format(jobDoneMessage, current_job.cargo.name))
    cancelJob()
end

function isOnJob()
    return (next(current_job) ~= nil)
end

function cancelJob()
    -- Remove all blips
    if next(current_job.route) ~= nil then
        for k,v in next, current_job.route do
            if DoesBlipExist(v.blip) then
                RemoveBlip(v.blip)
            end
        end
    end
    
    -- Make peds exit vehicle and fuck off
    if next(current_job.peds) ~= nil then
        for k,v in next, current_job.peds do
            if DoesEntityExist(v) then
                TaskLeaveAnyVehicle(v, 0, 0)
                SetTimeout(3000, function()
                    RemovePedElegantly(v) 
                end)
            end
        end
    end
    current_job = {}
end

function drawText(text)
    Citizen.InvokeNative(0xB87A37EEB7FAA67D,"STRING")
    AddTextComponentString(text)
    Citizen.InvokeNative(0x9D77056A530643F6, 500, true)
end

function drawMessage(text)
    Citizen.InvokeNative(0xB87A37EEB7FAA67D,"STRING")
    AddTextComponentString(text)
    Citizen.InvokeNative(0x9D77056A530643F6, 20000, false)
end

function isInValidVehicle()
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    local validVehicle = false
    for k,v in next, job_vehicles do
        if GetEntityModel(veh) == GetHashKey(v.name) then validVehicle = true break end 
    end
    return validVehicle
end

function promptJob(location)
    local validVehicle = isInValidVehicle()
    local tier = location.tier
    if validVehicle then
        if getCurrentTier() >= tier then
            if tier == 3 then
                drawText(string.format(startTextSpecial, location.name))  
            else
                drawText(string.format(startText, location.name))         
            end
            if isEPressed() then
                TriggerServerEvent("gd_jobs_bus:tryStartJob", location, tier) 
                return
            end
        else
            drawText(tooLowTierText)         
        end
    else
        drawText(invalidVehicleText) 
    end
end

function nearMarker(x, y, z)
    local p = GetEntityCoords(GetPlayerPed(-1))
    local zDist = math.abs(z - p.z)
    return (GetDistanceBetweenCoords(x, y, z, p.x, p.y, p.z) < 7 and zDist < 4) 
end

function isEPressed()
    return IsControlJustPressed(0, 38)
end

function getCurrentTier()
    local tier = 0
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
    if veh then
        for k,v in next, job_vehicles do
             if GetEntityModel(veh) == GetHashKey(v.name) then tier = v.tier break end 
        end
    end
    return tier
end

Citizen.CreateThread(function()
    for k,v in next, job_blips do 
        local blip = AddBlipForCoord(v.x, v.y, 0) 
        SetBlipSprite(blip, job_blip_settings.start_blip.id)
        SetBlipColour(blip, job_blip_settings.start_blip.color)
        SetBlipAsShortRange(blip, true)
        setBlipName(blip, v.name)
    end
    while true do
        Citizen.Wait(1)
        if not isOnJob() then
            -- NOT ON JOB
            local p = GetEntityCoords(GetPlayerPed(-1))
            for k,v in next, job_starts do 
                drawMarker(v.x, v.y, v.z, v.tier > 2)    
                if nearMarker(v.x, v.y, v.z) then
                    promptJob(v, getCurrentTier())
                end
            end
            for k,v in next, debugMarkers do 
                drawMarker(v.x, v.y, v.z)    
            end
        else
            -- ON JOB
            for k,v in next, current_job.route do
                local marker = v
                local p = GetEntityCoords(GetPlayerPed(-1))
                local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
                drawMarker(marker.x, marker.y, marker.z)
                if nearMarker(marker.x, marker.y, marker.z) and isInValidVehicle() and getCurrentTier() >= current_job.tier then
                    if GetEntitySpeed(veh) > 0.1 and engineNeedsToBeOff then
                        drawText(string.format(engineRunningText))
                    else
                        drawText(string.format(pickupText, current_job.cargo.name, v.name))
                        if isEPressed() then
                            pickupJob(k)
                        end
                    end
                end
            end
        end
    end
end)