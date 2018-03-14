local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salário Suado: ~g~$" -- message that will show before payment of salary

cfg.post = "." -- message that will show after payment

cfg.bank = false -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 10 -- minutes between payment for paycheck


cfg.paycheck_title_picture = "BANCO DO BRASIL" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display


cfg.paycheck = { -- ["permission"] = paycheck
  ["moto_boy.paycheck"] = 65,
  ["taxista.paycheck"] = 166,
  ["repair.paycheck"] = 76,
  ["advogado.paycheck"] = 100,
  ["lixeiro.paycheck"] = 65,
  ["Pescador.paycheck"] = 65,
  ["bus.paycheck"] = 50,
  ["motoristabancario.paycheck"] = 50,
  ["bombeirocomandante.paycheck"] = 750,
  ["bombeirosubccomandante.paycheck"] = 750,
  ["bombeirocoronel.paycheck"] = 650, 
  ["bombeirotencoronel.paycheck"] = 650,
  ["bombeirocapitao.paycheck"] = 650,
  ["bombeiroprimeirosargento.paycheck"] = 600,
  ["bombeirocabo.paycheck"] = 600, 
  ["bombeirotensoldado.paycheck"] = 400,
  ["bombeirotenrecruta.paycheck"] = 400,     
  ["comandantegeral.paycheck"] = 750, 
  ["coronel.paycheck"] = 670,
  ["tenentecoronel.paycheck"] = 670,
  ["major.paycheck"] = 670,
  ["capitao.paycheck"] = 670,
  ["primeirotenente.paycheck"] = 620,
  ["segundotenente.paycheck"] = 620,
  ["subtenente.paycheck"] = 620,
  ["primeirosargento.paycheck"] = 570,
  ["segundosargento.paycheck"] = 570,
  ["terceirosargento.paycheck"] = 570,
  ["cabo.paycheck"] = 520,
  ["Soldado.paycheck"] = 520, 
  ["recruta.paycheck"] = 520,   
  ["dg.paycheck"] = 880,     
  ["cmdbope.paycheck"] = 880,
  ["soldadobope.paycheck"] = 720,
  ---------------------------------------------
  ["cvchefe.paycheck"] = 292,
  ["tcpchefe.paycheck"] = 292,
  ["adachefe.paycheck"] = 292,
  ["tcachefe.paycheck"] = 292,
  ["cvbd.paycheck"] = 240,
  ["tcpbd.paycheck"] = 240,
  ["adabd.paycheck"] = 240,
  ["tcabd.paycheck"] = 240,
  ["cvsol.paycheck"] = 210,
  ["tcpsol.paycheck"] = 210,
  ["tcasol.paycheck"] = 210,
  ["adasol.paycheck"] = 210,
  ["jornal.paycheck"] = 120, 
}


return cfg
