AddEventHandler('playerConnecting', function()
	TriggerClientEvent('showNotification', -1,"~g~".. GetPlayerName(source).."~w~ conectou.")
end)

AddEventHandler('playerDropped', function()
	TriggerClientEvent('showNotification', -1,"~r~".. GetPlayerName(source).."~w~ desconectou.")
end)

RegisterServerEvent('playerDied')
AddEventHandler('playerDied',function(killer,reason)
	if killer == "**Invalid**" then --Can't figure out what's generating invalid, it's late. If you figure it out, let me know. I just handle it as a string for now.
		reason = 2
	end
	if reason == 0 then
		TriggerClientEvent('showNotification', -1,"~o~".. GetPlayerName(source).."~w~ cometeu suicídio. ")
	elseif reason == 1 then
		TriggerClientEvent('showNotification', -1,"~o~".. killer .. "~w~ assassinado ~o~"..GetPlayerName(source).."~w~.")
	else
		TriggerClientEvent('showNotification', -1,"~o~".. GetPlayerName(source).."~w~ morreu respawn 4 minutos.")
	end
end)