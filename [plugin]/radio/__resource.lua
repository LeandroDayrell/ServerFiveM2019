resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_02_POP" { url = "https://ia801501.us.archive.org/19/items/RACIONAISMCSASMELHORES/RACIONAIS_MC_S_AS_MELHORES.ogg", volume = 0.4 }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "https://ia601502.us.archive.org/15/items/AsMaisTocadasNoBaileFunk2017SETFUNK2018/As_Mais_Tocadas_no_Baile_Funk_2017_SET_FUNK_2018.ogg", volume = 0.3 }
supersede_radio "RADIO_14_DANCE_02" { url = "https://ia801501.us.archive.org/19/items/RACIONAISMCSASMELHORES/RACIONAIS_MC_S_AS_MELHORES.ogg", volume = 0.3 }
supersede_radio "RADIO_17_FUNK" { url = "https://ia601502.us.archive.org/15/items/AsMaisTocadasNoBaileFunk2017SETFUNK2018/As_Mais_Tocadas_no_Baile_Funk_2017_SET_FUNK_2018.ogg", volume = 0.3 }
supersede_radio "RADIO_07_DANCE_01" { url = "https://ia801501.us.archive.org/19/items/RACIONAISMCSASMELHORES/RACIONAIS_MC_S_AS_MELHORES.ogg", volume = 0.3 }
supersede_radio "RADIO_08_MEXICAN" { url = "https://ia601502.us.archive.org/15/items/AsMaisTocadasNoBaileFunk2017SETFUNK2018/As_Mais_Tocadas_no_Baile_Funk_2017_SET_FUNK_2018.ogg", volume = 0.3 }
supersede_radio "RADIO_06_COUNTRY" { url = "https://ia601502.us.archive.org/15/items/AsMaisTocadasNoBaileFunk2017SETFUNK2018/As_Mais_Tocadas_no_Baile_Funk_2017_SET_FUNK_2018.ogg", volume = 0.4 }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
