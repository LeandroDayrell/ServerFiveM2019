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
cfg.message_paycheckdinheirosujo = "Você recebeu o salario de: ~g~$" -- message that will 
cfg.message_bill = "Você pagou: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 10 -- minutes between payment for paycheck
cfg.minutes_paycheckdinheirosujo = 11
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
  
  
}

cfg.paycheckdinheirosujo = {
	-- CHEFE
  ["c.v.paycheckdinheirosujoc"] = 470,
  ["t.c.p.paycheckdinheirosujoc"] = 470,
  ["a.d.a.paycheckdinheirosujoc"] = 470,
  ["t.c.a.paycheckdinheirosujoc"] = 470,
  
  
   -- braço
  ["c.v.paycheckdinheirosujob"] = 400,
  ["t.c.p.paycheckdinheirosujob"] = 400,
  ["a.d.a.paycheckdinheirosujob"] = 400,
  ["t.c.a.paycheckdinheirosujob"] = 400,
  
  -- SOLDADO
  ["c.v.paycheckdinheirosujoss"] = 350,
  ["t.c.p.paycheckdinheirosujoss"] = 350,
  ["t.c.a.paycheckdinheirosujoss"] = 350,
  ["a.d.a.paycheckdinheirosujoss"] = 350,


}
cfg.bill = {
}

return cfg
