Citizen.CreateThread(function()
    while true do
		SetWeatherTypePersist("CLEAR")
        	SetWeatherTypeNowPersist("CLEAR")
       		SetWeatherTypeNow("CLEAR")
       		SetOverrideWeather("CLEAR")
    		Citizen.Wait(1)
	end
end)