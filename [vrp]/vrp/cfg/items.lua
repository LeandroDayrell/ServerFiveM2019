-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["benzoilmetilecgonina"] = {"benzoilmetilecgonina", "Algum éster de ácido benzoico.", nil, 0.01}, -- no choices
  ["seeds"] = {"seeds", "Algumas sementes de erva daninha.", nil, 0.01}, -- no choices
  ["harness"] = {"harness", "Some Harness Lysergsäurediethylamid.", nil, 0.010}, -- no choices
  ["credit"] = {"credit", "Cartão de crédito.", nil, 0.10}, -- no choices
  ["bank_money"] = {"Dinheiro do banco", "$.", nil, 0}, -- no choices
  ["weed"] = {"weed","", nil,3},
  ["cocacola"] = {"cocacola","coca-cola geladinha pra entrega", nil, 0.50},
  ["pizza"] = {"pizza","pizza quentinha pra entrega", nil, 0.50},
  ["minerio_bruto"] = {"minerio_bruto", "minerio_bruto pronto pra vende", nil, 0.80}, -- no choices
  ["documento"] = {"Documento", "Documento do advogado", nil, 0.80}, -- no choices
  ["peixe"] = {"peixe","pronta pra limpa!", nil,2.0},
  ["peixe_limpo"] = {"peixe_limpo","pronta pra empacota.", nil,0.80},
  ["peixe_frito"] = {"peixe_frito","peixe frito pronta pra vende!", nil,0.80},
  ["minerio"] = {"minerio", "Minerio para produção de minerio_bruto.", nil, 0.8}, -- no choices
  ["pedra"] = {"pedra", "Pedra para produção de Minerio.", nil, 0.80}, -- no choices
  ["saco"] = {"saco", "saco vazio pronto enche de lixo.", nil, 0.80},
  ["kitlimpeza"] = {"kitlimpeza", "kitlimpeza  pronto limpa a piscina.", nil, 3.00},
  ["encomenda"] = {"encomenda", "encomenda  pronto pra entrega.", nil, 0.9},
  ["canabis"] = {"canabis", "une fleur de canabis.", nil, 0.80}, -- no choices
  ["canabist"] = {"canabist", " un sachet de Canabis.", nil, 0.80}, -- no choices
  ["ouro"] = {"ouro", "Barra De Ouro.", nil, 2.00}, -- Arrumado
  ["corpos"] = {"corpos", "Corpos Em Decomposição.", nil, 1.00}, -- Arrumado
  ["orgaos"] = {"orgaos", "Orgaos Humanos.", nil, 1.00}, -- Arrumado
  ["diamant"] = {"diamant", "du diamant brut.", nil, 1.00}, -- no choices
  ["oab"] = {"oab", "Carteira de Advogado.", nil, 0.01}, -- no choices
  ["carteirajr"] = {"carteirajr", "Carteira de Jornalista.", nil, 0.01}, -- no choices
  ["diamantt"] = {"diamantt", "du diamant pret a la revente", nil, 1.00}, -- no choices  
  ["folhadecoca"] = {"folhadecoca", "Folhas De Coca", nil, 0.80}, -- Arrumado
  ["pomme"] = {"pomme", "Uma maçã vermelha.", nil, 1.00}, -- no choices
  ["picareta"] = {"Picareta", "Para minerar Minerios", nil, 0.80},  -- PICARETA
  ["pa"] = {"pa", "Pa", nil, 0.80}, -- PÁ
  ["oxigenio"] = {"oxigenio", "oxigenio para pesca de tartaruga", nil, 0.80}, -- PÁ
  ["foice"] = {"foice", "Para minerar Trigo", nil, 0.80},
  ["baldedeleite"] = {"baldedeleite de Leite", "Ordenhado da Vaca", nil, 0.50}, -- no choices
  ["caixas de leite"] = {"caixas de leite", "Pronto pra Venda", nil, 1.00}, -- no choices
  ["diamante"] = {"diamante", "Diamante pronto pra Venda", nil, 1.00}, -- no choices
  ["ouro"] = {"ouro", "Ouro pronto pra Venda", nil, 1.00}, -- no choices
  ["cobre"] = {"cobre", "Cobre pronto pra Venda", nil, 1.00}, -- no choices
  ["pacote de sal"] = {"pacote de sal", "Sal pronto pra Venda", nil, 1.50}, -- no choices
  ["pacotes de trigo"] = {"pacotes de trigo", "Trigo pronto pra Venda", nil, 1.00}, -- no choices
  ["diamante com pedra"] = {"diamante com pedra", "", nil, 2.00}, -- no choices
  ["pepitas de ouro"] = {"pepitas de ouro", "Pedra", nil, 1.20}, -- no choices  
  ["pepitas de cobre"] = {"pepitas de cobre", "Pedra.", nil, 2.00}, -- no choices
  ["sal fino"] = {"sal fino", "", nil, 1.00}, -- no choices
  ["trigo"] = {"trigo", ".", nil, 1.00}, -- no choices
  ["tartaruga"] = {"tartaruga", "uma tartaruga ainda viva.", nil, 1.00}, -- no choices
  ["erva"] = {"erva","Erva colhida pronta pra processa", nil,0.80},
  ["maconha"] = {"maconha","maconha pronta pra enrola", nil,0.80},
  ["baseado"] = {"baseado","baseado enrolado pronto pra vender", nil,0.80},
  ["hidrazida"] = {"hidrazida", "Hidrazida e usada para fazer lsd", nil, 0.80}, -- no choices
  ["eter"] = {"eter", "Eter e usada para fazer lsd", nil, 0.80}, -- no choices
  ["lsd"] = {"lsd", "LSD pronto para revenda.", nil, 0.80}, -- no choices
  ["metil"] = {"metil", "Usado para ", nil, 0.80}, -- no choices
  ["ecstasy"] = {"ecstasy", "cachet d'extasie.", nil, 0.80}, -- no choices
  ["docedeecstasy"] = {"docedeecstasy", "cachet d'extasie.", nil, 0.80}, -- no choices
  ["cocaina"] = {"cocaina", "Campo de Cocaina.", nil, 0.80}, -- no choices
  ["pastadecocaina"] = {"pastadecocaina", "Folha de Cocaina.", nil, 0.80}, -- no choices
  ["pinodecoca"] = {"pinodecoca", "Vender pino.", nil, 0.80}, -- no choices
  ["pastadecrack"] = {"pastadecrack", "Pasta de crack", nil, 0.80},
  ["crack"] = {"crack", "crack", nil, 0.80},
  ["pedradecrack"] = {"pedradecrack", "crack", nil, 0.80},
  ["uranio"] = {"uranio", "Produto Radioativo.", nil, 0.80}, -- Arrumado
  ["uraniorefinado"] = {"uraniorefinado", "Produto Radioativo.", nil, 0.80},
  ["uranio_enriquecido"] = {"uranio_enriquecido", "Produto Radioativo.", nil, 0.80}, -- Arrumado
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[RIO DE JANEITO] Pacote de Itens ["..name.."] não encontrado")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
