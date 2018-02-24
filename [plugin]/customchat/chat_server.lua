RegisterServerEvent('chatCommandEntered')
RegisterServerEvent('chatMessageEntered')

-- functions
function stringSplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

-- main event
AddEventHandler('chatMessageEntered', function(name, color, message)
    if not name or not color or not message or #color ~= 3 then
        return
    end
	
    if message:sub(1, 1) == "/" then
        fullcmd = stringSplit(message, " ")
        cmd = fullcmd[1]
		local msg = fullcmd[2]
		for k,v in ipairs(fullcmd) do
			if k > 2 then
				msg = msg .. " " .. fullcmd[k]
			end
		end

        if cmd == "/me" then
			if msg ~= nil then
				TriggerClientEvent("sendProximityMessageMe", -1, source, name, tostring(msg))
			end
        	CancelEvent()
        end
		
        if cmd == "/do" then
			if msg ~= nil then
				TriggerClientEvent("sendProximityMessageDo", -1, source, name, tostring(msg))
			end
        	CancelEvent()
        end
		
        if cmd == "/g" then
			if msg ~= nil then
				TriggerClientEvent("sendGlobalMessage", -1, source, name, tostring(msg))
			end
        	CancelEvent()
        end

        if cmd == "/twitter" then
			if msg ~= nil then
				TriggerClientEvent("sendTwitterMessage", -1, source, name, tostring(msg))
			end
        	CancelEvent()
        end
		
        if cmd == "/ooc" then
			if msg ~= nil then
				TriggerClientEvent("sendOOCMessage", -1, source, name, tostring(msg))
			end
        	CancelEvent()
        end
	else
		if not WasEventCanceled() then
			TriggerClientEvent('sendProximityMessage', -1, source, name, message)
        	CancelEvent()
		end
	end

	TriggerEvent('chatMessage', source, name, message)
    print(name .. ': ' .. message)
end)

-- rcon say command handler
AddEventHandler('rconCommand', function(commandName, args)
    if commandName == "say" then
        local msg = table.concat(args, ' ')

        TriggerClientEvent('chatMessage', -1, '[AVISO SERVER]', { 0, 0x99, 255 }, msg)
        RconPrint('[AVISO] Server: ' .. msg .. "\n")

        CancelEvent()
    end
end)

-- rcon tell command handler
AddEventHandler('rconCommand', function(commandName, args)
    if commandName == "tell" then
        local target = table.remove(args, 1)
        local msg = table.concat(args, ' ')

        TriggerClientEvent('chatMessage', tonumber(target), '[AVISO SERVER]', { 0, 0x99, 255 }, msg)
        RconPrint('[AVISO] Server: ' .. msg .. "\n")

        CancelEvent()
    end
end)

--[[ player join messages -- deactivated by default, uncomment to activate
AddEventHandler('playerActivated', function()
    TriggerClientEvent('chatMessage', -1, '', { 0, 0, 0 }, '^2* ' .. GetPlayerName(source) .. ' joined.')
end)

AddEventHandler('playerDropped', function(reason)
    TriggerClientEvent('chatMessage', -1, '', { 0, 0, 0 }, '^2* ' .. GetPlayerName(source) ..' left (' .. reason .. ')')
end)]]