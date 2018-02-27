local m = {} -- <<< Don't touch this!
-----------[ SETTINGS ]---------------------------------------------------

-- Delay in minutes between messages
m.delay = 7

-- Prefix appears in front of each message. 
-- Suffix appears on the end of each message.
-- Leave a prefix/suffix empty ( '' ) to disable them.
m.prefix = '^5[bot] '
m.suffix = '^3!'

-- You can make as many messages as you want.
-- You can use ^0-^9 in your messages to change text color.
m.messages = {   
    '^3 Siga o RP- Respeite as regras',
	'^3 Pegue seu Trabalho no i ROXO',
    '^3 Pressione M para acessar o Celular',
    '^3 Proibido Roubar VTR Sujeito a Ban Permanente',
	'^3 proibido Relogar quando morre-chame BOMBEIRO ou aguarde',
	'^3 Proibido matar plays sem motivos ',
	'^3 proibido matar safezone ',
	'^3 favela PVP cuidado ',
	'^3 Proibido Matar (spaw inicial,agencia emprego,hospital,auto escola) ',
}

-- Player identifiers on this list will not receive any messages.
-- Simply remove all identifiers if you don't want an ignore list.
m.ignorelist = { 
}

-----[ CODE, DON'T TOUCH THIS ]-------------------------------------------
local playerIdentifiers
local enableMessages = true
local timeout = m.delay * 1000 * 60 -- from ms, to sec, to min
local playerOnIgnoreList = false
RegisterNetEvent('va:setPlayerIdentifiers')
AddEventHandler('va:setPlayerIdentifiers', function(identifiers)
    playerIdentifiers = identifiers
end)
Citizen.CreateThread(function()
    while playerIdentifiers == {} or playerIdentifiers == nil do
        Citizen.Wait(1000)
        TriggerServerEvent('va:getPlayerIdentifiers')
    end
    for iid in pairs(m.ignorelist) do
        for pid in pairs(playerIdentifiers) do
            if m.ignorelist[iid] == playerIdentifiers[pid] then
                playerOnIgnoreList = true
                break
            end
        end
    end
    if not playerOnIgnoreList then
        while true do
            for i in pairs(m.messages) do
                if enableMessages then
                    chat(i)
                    print('[vAnnouncer] Message #' .. i .. ' sent.')
                end
                Citizen.Wait(timeout)
            end
            
            Citizen.Wait(0)
        end
    else
        print('[vAnnouncer] Player is on ignorelist, no announcements will be received.')
    end
end)
function chat(i)
    TriggerEvent('chatMessage', '', {255,255,255}, m.prefix .. m.messages[i] .. m.suffix)
end
RegisterCommand('automessage', function()
    enableMessages = not enableMessages
    if enableMessages then
        status = '^2enabled^5.'
    else
        status = '^1disabled^5.'
    end
    TriggerEvent('chatMessage', '', {255, 255, 255}, '^5[vAnnouncer] automessages are now ' .. status)
end, false)
--------------------------------------------------------------------------
