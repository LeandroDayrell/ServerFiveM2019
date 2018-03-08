
local cfg = {}

-- exp notes:
-- levels are defined by the amount of xp
-- with a step of 5: 5|15|30|50|75 (by default)
-- total exp for a specific level, exp = step*lvl*(lvl+1)/2
-- level for a specific exp amount, lvl = (sqrt(1+8*exp/step)-1)/2

-- define groups of aptitudes
--- _title: title of the group
--- map of aptitude => {title,init_exp,max_exp}
---- max_exp: -1 for infinite exp
cfg.gaptitudes = {
  ["physical"] = {
    _title = "Fisico",
    ["strength"] = {"Forca", 30, 210} -- required, level 3 to 6 (by default, can carry 10kg per level)
  },
  ["science"] = {
    _title = "Ciencia",
    ["produtos químicos"] = {"Estudo de produtos quimicos", 0, -1}, -- example
    ["matematica"] = {"Estudo de Matematica", 0, -1} -- example
   },
  ["laboratory"] = {
    _title = "laboratorio de drogas",
	["cocaine"] = {"Processo voce cocaina, precisa de benzoilmetilecgonina, encontre em plantacao.", 0, -1},
	["weed"] = {"processar-lhe erva , precisar de sementes, encontrar em plantacao.", 0, -1},
	["lsd"] = {"Processo voce lsd, precisa de arnes, encontre em plantacao.", 0, -1}
  },
  ["hacker"] = {
    _title = "Study of hacker",
	["logic"] = {"Estudo da logica.", 0, -1},
	["c++"] = {"Estudo de linguagem C ++.", 0, -1},
	["lua"] = {"Estudo da língua lua.", 0, -1},
	["hacking"] = {"Estudo de hackers.", 0, -1}
  }
}

return cfg
