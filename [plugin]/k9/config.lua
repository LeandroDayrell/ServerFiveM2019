K9Config = {}
K9Config = setmetatable(K9Config, {})

K9Config.OpenMenuIdentifierRestriction = false
K9Config.OpenMenuPedRestriction = true
K9Config.LicenseIdentifiers = {
	"license:c06fbf1faaf995c7b9e207ef77712971a3ed4dc3"
}
K9Config.SteamIdentifiers = {
	"steam:1100001081f9ab0"
}
K9Config.PedsList = {
	"s_m_y_cop_01",
	"s_m_m_chemsec_01",
	"s_m_y_sheriff_01",
	"s_m_y_swat_01",
	"s_m_y_hwaycop_01",
	"s_m_m_marine_01",
	"s_m_m_paramedic_01",
		"s_f_y_cop_01",
	"s_m_m_pilot_02",
	"s_f_y_scrubs_01"  
}

-- Restricts the dog to getting into certain vehicles
K9Config.VehicleRestriction = false
K9Config.VehiclesList = {
	
}

-- Searching Type ( RANDOM [AVAILABLE] | VRP [NOT AVAILABLE] | ESX [NOT AVAILABLE] )
K9Config.SearchType = "Random"
K9Config.OpenDoorsOnSearch = false

-- Used for Random Search Type --
K9Config.Items = {
	{item = "uranio_enriquecido", illegal = true},
	{item = "uraniorefinado", illegal = true},
	{item = "uranio", illegal = false},
	{item = "pedradecrack", illegal = false},
	{item = "crack", illegal = false},
	{item = "pastadecrack", illegal = false},
	{item = "pinodecoca", illegal = false},
	{item = "pastadecocaina", illegal = false},
	{item = "cocaina", illegal = true},
	{item = "docedeecstasy", illegal = true},
	{item = "ecstasy", illegal = false},
	{item = "metil", illegal = false},
	{item = "lsd", illegal = false},
	{item = "eter", illegal = false},
	{item = "hidrazida", illegal = false},
	{item = "baseado", illegal = false},
    {item = "maconha", illegal = true},
	{item = "erva", illegal = true},
	{item = "tartaruga", illegal = false},
}

-- Language --
K9Config.LanguageChoice = "English"
K9Config.Languages = {
	["English"] = {
		follow = "Venha",
		stop = "Salto",
		attack = "Mordida",
		enter = "Dentro",
		exit = "Fora"
	}
}