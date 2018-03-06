--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]


local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu o salario de: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Você pagou: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 7 -- minutes between payment for paycheck
cfg.minutes_bill = 10 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Maze Bank" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Mors Mutual" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  
  --- LEGAIS
  ["moto_boy.paycheck"] = 55,
  ["taxista.paycheck"] = 166,
  ["repair.paycheck"] = 66,
  ["advogado.paycheck"] = 100,
  ["lixeiro.paycheck"] = 55,
  ["Pescador.paycheck"] = 55,
  ["bus.paycheck"] = 40,
  ["motoristabancario.paycheck"] = 40,
  ["bombeirocomandante.paycheck"] = 355,
  ["bombeirosubccomandante.paycheck"] = 355,
  ["bombeirocoronel.paycheck"] = 266, 
  ["bombeirotencoronel.paycheck"] = 266,
  ["bombeirocapitao.paycheck"] = 266,
  ["bombeiroprimeirosargento.paycheck"] = 222,
  ["bombeirocabo.paycheck"] = 222, 
  ["bombeirotensoldado.paycheck"] = 222,
  ["bombeirotenrecruta.paycheck"] = 222, 
  ["comandantegeral.paycheck"] = 435, 
  ["coronel.paycheck"] = 384,
  ["tenentecoronel.paycheck"] = 384,
  ["major.paycheck"] = 384,
  ["capitao.paycheck"] = 384,
  ["primeirotenente.paycheck"] = 335,
  ["segundotenente.paycheck"] = 335,
  ["subtenente.paycheck"] = 335,
  ["primeirosargento.paycheck"] = 300,
  ["segundosargento.paycheck"] = 300,
  ["terceirosargento.paycheck"] = 300,
  ["cabo.paycheck"] = 234,
  ["Soldado.paycheck"] = 234, 
  ["recruta.paycheck"] = 234, 
  ["dg.paycheck"] = 334,     
  ["cmdbope.paycheck"] = 384,
  ["soldadobope.paycheck"] = 222,
  
  
}

cfg.bill = {
}

return cfg
