
local cfg = {}

-- PCs positions
cfg.pcs = {
  {448.17291259766,-973.06207275391,30.689590454102},---delegado
  {1853.21, 3689.51, 34.2671},
  --{-449.36492919922,6012.4243164063,31.716388702393},----  prf
  {442.030609130859, -978.72705078125, 30.6896057128906},
  {153.08827209473,-742.71356201172,258.15173339844}
}

-- vehicle tracking configuration
cfg.trackveh = {
  min_time = 300, -- min time in seconds
  max_time = 600, -- max time in seconds
  service = "police" -- service to alert when the tracking is successful
}

-- wanted display
cfg.wanted = {
  blipid = 458,
  blipcolor = 38,
  service = "police"
}

-- illegal items (seize)
cfg.seizable_items = {
  "dirty_money",
  "cocaine",
  "lsd",
  "seeds",
  "weed",
  "harness",
  "erva",
  "credit",
  "maconha",
  "baseado",
  "cocaina",
  "pastadecocaina",
  "folhademaconha",
  "pastadecrack",
  "corpos",
  "orgaos",
  "uranio_enriquecido",
  "uranio",
  "exta",
  "extat",
  "folhadecoca",
  "lsdt",
  "crack",
  "rede",
  "WEAPON_SMG",
}

-- jails {x,y,z,radius}
cfg.jails = {
  {459.485870361328,-1001.61560058594,24.914867401123,2.1},
  {459.305603027344,-997.873718261719,24.914867401123,2.1},
  {459.999938964844,-994.331298828125,24.9148578643799,1.6}
}

-- fines
-- map of name -> money
cfg.fines = {
  ["Fuga Perseguisao"] = 10000,
  ["Fuga Perseguisao"] = 0,
  ["Resistencia a Prisao"] = 10000,
  ["Resistencia a Prisao"] = 0,
  ["Alta Velocidade"] = 5000,
  ["Alta Velocidade"] = 0,  
  ["Ultrapassar Sinal Vermelho"] = 5000,
  ["Ultrapassar Sinal Vermelho"] = 0,
  ["Corrida Ilegal Racha"] = 8000,
  ["Corrida Ilegal Racha"] = 0,
  ["Destruir Patrimonio Publico"] = 1000,
  ["Destruir Patrimonio Publico"] = 0,
  ["Atropelamento"] = 7000,
  ["Atropelamento"] = 0,
  ["Dirigir sem CNH"] = 5000,
  ["Dirigir sem CNH"] = 0,
  ["Roubo de Veiculo"] = 10000,
  ["Roubo de Veiculo"] = 0,
  ["Direcao Perigosa"] = 3000,
  ["Direcao Perigosa"] = 0,
  ["Tentativa de Roubo a Banco"] = 12500,
  ["Tentativa de Roubo a Banco"] = 0,   
  ["Roubo a Banco"] = 15000,
  ["Roubo a Banco"] = 0,
  ["Tentativa de Roubo a Lojas"] = 7000,
  ["Tentativa de Roubo a Lojas"] = 0,
  ["Roubo a Lojas"] = 11000,
  ["Roubo a Lojas"] = 0,
  ["Homicidio"] = 50000,
  ["Homicidio"] = 0,
  ["Tentativa de Homicidio"] = 25000,
  ["Tentativa de Homicidio"] = 0,
  ["Agressao"] = 3000,
  ["Agressao"] = 0,
  ["Roubo a Civil"] = 5000,
  ["Roubo a Civil"] = 0,
  ["Tentativa de Roubo"] = 3000,
  ["Tentativa de Roubo"] = 0,
  ["Roubo a Militar"] = 10000,
  ["Roubo a Militar"] = 0,
  ["Tentativa de Roubo a Militar."] = 13000,
  ["Tentativa de Roubo a Militar."] = 0,
  ["Ameaca a Civil e Militar"] = 5000,
  ["Ameaca a Civil e Militar"] = 0,
  ["Suborno"] = 9000,
  ["Suborno"] = 0,
  ["Desacato a Autoridade"] = 5000,
  ["Desacato a Autoridade"] = 0,
  ["Extorsao"] = 5000,
  ["Extorsao"] = 0,
  ["Calunia"] = 3000,
  ["Calunia"] = 0,
  ["Difamacao"] = 6500,
  ["Difamacao"] = 0,
  ["Poluicao Sonora"] = 3000,
  ["Poluicao Sonora"] = 0,
  ["Porte Ilegal de Armas"] = 7000,
  ["Porte Ilegal de Armas"] = 0,
  ["Mascarado"] = 5000,
  ["Mascarado"] = 0,
  ["Sem Capacete"] = 2500,
  ["Sem Capacete"] = 0,
  ["Sequestro"] = 12500,
  ["Sequestro"] = 0,
  ["Traje Balistico"] = 5000,
  ["Traje Balistico"] = 0,  
  ["Trafico de Drogas"] = 7000,
  ["Trafico de Drogas"] = 0,
  ["Dinheiro Sujo"] = 5000,
  ["Dinheiro Sujo"] = 0,
  ["Trafico de Armas"] = 10000,
  ["Trafico de Armas"] = 0,
  ["Formacao de Quadrilha"] = 10000,
  ["Formacao de Quadrilha"] = 0,
  
}

cfg.licencas = {
  ["Porte de Pistola"] = 15000,
}

return cfg
