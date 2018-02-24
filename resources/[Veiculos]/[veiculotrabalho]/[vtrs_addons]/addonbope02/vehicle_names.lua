function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0xC593CAF5', 'Volkswagen Arteon BOPE')
  AddTextEntry('0xC990C46A', 'Volkswagen Arteon BOPE')
end)
