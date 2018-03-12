local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salário: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Imposto lava jato: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = false -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 10 -- minutes between payment for paycheck
cfg.minutes_bill = 20 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Maze Bank" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Mors Mutual" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  ["moto_boy.paycheck"] = 55,
  ["taxista.paycheck"] = 166,
  ["repair.paycheck"] = 66,
  ["advogado.paycheck"] = 100,
  ["lixeiro.paycheck"] = 55,
  ["Pescador.paycheck"] = 55,
  ["bus.paycheck"] = 40,
  ["motoristabancario.paycheck"] = 40,
  ["bombeirocomandante.paycheck"] = 450,
  ["bombeirosubccomandante.paycheck"] = 450,
  ["bombeirocoronel.paycheck"] = 350, 
  ["bombeirotencoronel.paycheck"] = 350,
  ["bombeirocapitao.paycheck"] = 350,
  ["bombeiroprimeirosargento.paycheck"] = 300,
  ["bombeirocabo.paycheck"] = 300, 
  ["bombeirotensoldado.paycheck"] = 300,
  ["bombeirotenrecruta.paycheck"] = 300,     
  ["comandantegeral.paycheck"] = 550, 
  ["coronel.paycheck"] = 470,
  ["tenentecoronel.paycheck"] = 470,
  ["major.paycheck"] = 470,
  ["capitao.paycheck"] = 470,
  ["primeirotenente.paycheck"] = 420,
  ["segundotenente.paycheck"] = 420,
  ["subtenente.paycheck"] = 420,
  ["primeirosargento.paycheck"] = 370,
  ["segundosargento.paycheck"] = 370,
  ["terceirosargento.paycheck"] = 370,
  ["cabo.paycheck"] = 320,
  ["Soldado.paycheck"] = 320, 
  ["recruta.paycheck"] = 320,   
  ["dg.paycheck"] = 580,     
  ["cmdbope.paycheck"] = 580,
  ["soldadobope.paycheck"] = 420,
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
  ["adasol.paycheck"] = 210  
}

cfg.bill = { -- ["permission"] = withdrawal
  ["moto_boy.paycheck"] = 10,
  ["taxista.paycheck"] = 10,
  ["repair.paycheck"] = 10,
  ["advogado.paycheck"] = 10,
  ["lixeiro.paycheck"] = 10,
  ["Pescador.paycheck"] = 10,
  ["bus.paycheck"] = 10,
  ["motoristabancario.paycheck"] = 10,
  ["bombeirocomandante.paycheck"] = 10,
  ["bombeirosubccomandante.paycheck"] = 10,
  ["bombeirocoronel.paycheck"] = 10, 
  ["bombeirotencoronel.paycheck"] = 10,
  ["bombeirocapitao.paycheck"] = 10,
  ["bombeiroprimeirosargento.paycheck"] = 10,
  ["bombeirocabo.paycheck"] = 10, 
  ["bombeirotensoldado.paycheck"] = 10,
  ["bombeirotenrecruta.paycheck"] = 10,     
  ["comandantegeral.paycheck"] = 10, 
  ["coronel.paycheck"] = 10,
  ["tenentecoronel.paycheck"] = 10,
  ["major.paycheck"] = 10,
  ["capitao.paycheck"] = 10,
  ["primeirotenente.paycheck"] = 10,
  ["segundotenente.paycheck"] = 10,
  ["subtenente.paycheck"] = 10,
  ["primeirosargento.paycheck"] = 10,
  ["segundosargento.paycheck"] = 10,
  ["terceirosargento.paycheck"] = 10,
  ["cabo.paycheck"] = 10,
  ["Soldado.paycheck"] = 10, 
  ["recruta.paycheck"] = 10,   
  ["dg.paycheck"] =10,     
  ["cmdbope.paycheck"] = 10,
  ["soldadobope.paycheck"] = 10,
  ---------------------------------------------
  ["cvchefe.paycheck"] = 10,
  ["tcpchefe.paycheck"] = 10,
  ["adachefe.paycheck"] = 10,
  ["tcachefe.paycheck"] = 10,
  ["cvbd.paycheck"] = 10,
  ["tcpbd.paycheck"] = 10,
  ["adabd.paycheck"] = 10,
  ["tcabd.paycheck"] = 10,
  ["cvsol.paycheck"] = 10,
  ["tcpsol.paycheck"] = 10,
  ["tcasol.paycheck"] = 10,
  ["adasol.paycheck"] = 10  
}

return cfg
