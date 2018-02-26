------------------[ CHANGE THIS ]--------------------
local minutesBetweenAnnouncements = 3
local prefix = "^2[BOT]^0"
local suffix = "^0."
local messages = {
    '^1 Siga o RP- Respeite as regras',
	'^12 Pegue seu Trabalho no i ROXO',
    '^2 Pressione M para acessar o Celular',
    '^11 Proibido Roubar VTR Sujeito a Ban Permanente',
	'^4 proibido Relogar quando morre-chame BOMBEIRO ou aguarde',
	'^5 Proibido matar plays sem motivos ',
	'^5 proibido matar safezone ',
	'^6 favela PVP cuidado ',
	'^7 Proibido Matar (spaw inicial,agencia emprego,hospital,auto escola) ',
	
	
	--'Message ^5five',
    --'Message ^6six'
}
-----------------------------------------------------

--  Extra info:
--  You can use ^0-^9 in your messages to change text color.
--  You only need to change the messages above,
--  the code below shouldn't be touched.
--  The script runs only on the client side so the server won't
--  have any extra load.
-- 
















-------[ CODE, NO NEED TO TOUCH THIS PART! ]---------
local count = 0
for _ in pairs(messages) do count = count + 1 end

local timeout = minutesBetweenAnnouncements * 60000
local i = 1
Citizen.CreateThread(function()
    while true do
        TriggerEvent('chatMessage', '', { 255, 255, 255 }, prefix .. " " .. messages[i] .. suffix)
        i = i + 1
        if (i == (count + 1)) then
            i = 1
        end
        Citizen.Wait(timeout)
    end
end)
-----------------------------------------------------