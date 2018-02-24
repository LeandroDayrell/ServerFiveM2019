
-- Returns TRUE if value is in array, FALSE otherwise
function getPlayerID(source)
	local identifiers = GetPlayerIdentifiers(source)
	local player = getIdentifiant(identifiers)
	return player
end

function getIdentifiant(id)
	for _, v in ipairs(id) do
		return v
	end
end

AddEventHandler('playerConnecting', function()
	local player = getPlayerID(source)

	local query = MySQL:executeQuery("SELECT identifier FROM whitelist WHERE identifier='@id'", {['@id'] = player})
	local result = MySQL:getResults(query, {'identifier'})

	if not result[1] then
		DropPlayer(source, "Vous n'êtes pas Whitelisté :P")
		print(player.." a été kick : pas whitelisté !")
		CancelEvent()
	end
end)
