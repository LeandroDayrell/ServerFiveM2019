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

cfg.minutes_paycheck = 20 -- minutes between payment for paycheck
cfg.minutes_bill = 20 -- minutes between withdrawal for bill

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
  -- BOMBEIRO
  
  ["bombeirocomandante.paycheck"] = 355,
  ["bombeirosubccomandante.paycheck"] = 355, --ADICIONAR
  
  ["bombeirocoronel.paycheck"] = 266, -- adicionar
  ["bombeirotencoronel.paycheck"] = 266, -- adicionar
  ["bombeirocapitao.paycheck"] = 266, -- adicionar
  
  ["bombeiroprimeirosargento.paycheck"] = 222, -- adicionar
  ["bombeirocabo.paycheck"] = 222, -- adicionar
  ["bombeirotensoldado.paycheck"] = 222, -- adicionar
  ["bombeirotenrecruta.paycheck"] = 222, -- adicionar
  

  
  -- POLICIA
  ["comandantegeral.paycheck"] = 435, -- ADICIONAR
  
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
  ["recruta.paycheck"] = 234,  -- ADICIONAR

  ["dg.paycheck"] = 334,      -- DELEGADO
  ["cmdbope.paycheck"] = 384,    -- BOPE
  ["soldadobope.paycheck"] = 222,    -- BOPE
  --["prf.paycheck"] = 700,     -- POLICIA RODOVIARIO FEDERAL
  
  
}

cfg.bill = { -- ["permission"] = withdrawal
  --- LEGAIS
  ["moto_boy.paycheck"] = 6,
  ["taxista.paycheck"] = 7,
  ["repair.paycheck"] = 7,
  ["advogado.paycheck"] = 10,
  ["lixeiro.paycheck"] = 5,
  ["Pescador.paycheck"] = 5,
  ["bus.paycheck"] = 2,
  -- BOMBEIRO
  
  ["bombeirocomandante.paycheck"] = 33,
  ["bombeirosubccomandante.paycheck"] = 33, --ADICIONAR
  
  ["bombeirocoronel.paycheck"] = 25, -- adicionar
  ["bombeirotencoronel.paycheck"] = 25, -- adicionar
  ["bombeirocapitao.paycheck"] = 25, -- adicionar
  
  ["bombeiroprimeirosargento.paycheck"] = 22, -- adicionar
  ["bombeirocabo.paycheck"] = 22, -- adicionar
  ["bombeirotensoldado.paycheck"] = 22, -- adicionar
  ["bombeirotenrecruta.paycheck"] = 22, -- adicionar
  

  
   -- POLICIA
  ["comandantegeral.paycheck"] = 38, -- ADICIONAR
  
  ["coronel.paycheck"] = 50,
  ["tenentecoronel.paycheck"] = 50,
  ["major.paycheck"] = 50,
  ["capitao.paycheck"] = 50,
  
  ["primeirotenente.paycheck"] = 33,
  ["segundotenente.paycheck"] = 33,
  ["subtenente.paycheck"] = 33,
  
  ["primeirosargento.paycheck"] = 30,
  ["segundosargento.paycheck"] = 30,
  ["terceirosargento.paycheck"] = 30,
  
  ["cabo.paycheck"] = 22,
  ["Soldado.paycheck"] = 22, 
  ["recruta.paycheck"] = 22,  -- ADICIONAR

  ["dg.paycheck"] = 33,      -- DELEGADO
  ["cmdbope.paycheck"] = 50,    -- BOPE
  ["soldadobope.paycheck"] = 22,    -- BOPE
  --["prf.paycheck"] = 700,     -- POLICIA RODOVIARIO FEDERAL
}

return cfg
