--===============================================--===============================================
--= stationary radars based on 	https://github.com/DreanorGTA5Mods/StationaryRadar	         =
--===============================================--===============================================

local radares = {
{x = -233.05868530273, y = -994.47332763672, z = 29.339559555054},-----pref
{x = -217.86488342285, y = -999.52362060547, z = 29.342378616333},-----pref
{x = -195.98153686523, y = -938.02941894531, z = 29.345603942871},-----pref
{x = -211.12518310547, y = -928.96228027344, z = 29.303554534912},-----pref
{x = -272.28414916992, y = -988.44659423828, z = 31.080606460571},-----pref
{x = 399.25421142578, y = -995.35955810547, z = 29.467039108276},-----dp
}   

 
Citizen.CreateThread(function()
  while true do
    Wait(0)
	for k,v in pairs(radares) do
	local player = GetPlayerPed(-1)
	local coords = GetEntityCoords(player, true)
	if Vdist2(radares[k].x, radares[k].y, radares[k].z, coords["x"], coords["y"], coords["z"]) < 10 then
	Citizen.Trace("esta pasando por un radar da PRF")
		checkSpeed()
	end
  end
 end
end)

  function checkSpeed()
  local pP = GetPlayerPed(-1)
  local speed = GetEntitySpeed(pP)
  local vehicle = GetVehiclePedIsIn(pP, false)
  local driver = GetPedInVehicleSeat(vehicle, -1)
  local maxspeed = 60
	local kmhspeed = math.ceil(speed*3.6)
		if kmhspeed > maxspeed and driver == pP then
			Citizen.Wait(250)
			TriggerServerEvent('cobrarMulta')
			exports.pNotify:SetQueueMax("left", 1)
            exports.pNotify:SendNotification({
            text = "Voce foi multado por anda a mais de 60kmh Em RS1500.",
            type = "error",
            timeout = 5000,
            layout = "centerLeft",
            queue = "left"
          })
	end
end
