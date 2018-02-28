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

cfg.minutes_paycheck = 10 -- minutes between payment for paycheck
cfg.minutes_bill = 30 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Maze Bank" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Mors Mutual" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  
  --- LEGAIS
  ["moto_boy.paycheck"] = 166,
  ["taxista.paycheck"] = 200,
  ["repair.paycheck"] = 200,
  ["advogado.paycheck"] = 300,
  ["lixeiro.paycheck"] = 167,
  ["Pescador.paycheck"] = 166,
  ["bus.paycheck"] = 100,
  -- BOMBEIRO
  
  ["bombeirocomandante.paycheck"] = 1066,
  ["bombeirosubccomandante.paycheck"] = 1066, --ADICIONAR
  
  ["bombeirocoronel.paycheck"] = 800, -- adicionar
  ["bombeirotencoronel.paycheck"] = 800, -- adicionar
  ["bombeirocapitao.paycheck"] = 800, -- adicionar
  
  ["bombeiroprimeirosargento.paycheck"] = 666, -- adicionar
  ["bombeirocabo.paycheck"] = 666, -- adicionar
  ["bombeirotensoldado.paycheck"] = 666, -- adicionar
  ["bombeirotenrecruta.paycheck"] = 666, -- adicionar
  

  
  -- POLICIA
  ["comandantegeral.paycheck"] = 1300, -- ADICIONAR
  
  ["coronel.paycheck"] = 1150,
  ["tenentecoronel.paycheck"] = 1150,
  ["major.paycheck"] = 1150,
  ["capitao.paycheck"] = 1000,
  
  ["primeirotenente.paycheck"] = 1000,
  ["segundotenente.paycheck"] = 1000,
  ["subtenente.paycheck"] = 1000,
  
  ["primeirosargento.paycheck"] = 900,
  ["segundosargento.paycheck"] = 900,
  ["terceirosargento.paycheck"] = 900,
  
  ["cabo.paycheck"] = 700,
  ["Soldado.paycheck"] = 700, 
  ["recruta.paycheck"] = 700,  -- ADICIONAR

  ["dg.paycheck"] = 1000,      -- DELEGADO
  ["bope.paycheck"] = 1150,    -- BOPE
  --["prf.paycheck"] = 700,     -- POLICIA RODOVIARIO FEDERAL
  
  
}

cfg.bill = { -- ["permission"] = withdrawal
  --- LEGAIS
  ["moto_boy.paycheck"] = 16,
  ["taxista.paycheck"] = 20,
  ["repair.paycheck"] = 20,
  ["advogado.paycheck"] = 30,
  ["lixeiro.paycheck"] = 15,
  ["Pescador.paycheck"] = 16,
  ["bus.paycheck"] = 10,
  -- BOMBEIRO
  
  ["bombeirocomandante.paycheck"] = 106,
  ["bombeirosubccomandante.paycheck"] = 106, --ADICIONAR
  
  ["bombeirocoronel.paycheck"] = 80, -- adicionar
  ["bombeirotencoronel.paycheck"] = 80, -- adicionar
  ["bombeirocapitao.paycheck"] = 80, -- adicionar
  
  ["bombeiroprimeirosargento.paycheck"] = 66, -- adicionar
  ["bombeirocabo.paycheck"] = 66, -- adicionar
  ["bombeirotensoldado.paycheck"] = 66, -- adicionar
  ["bombeirotenrecruta.paycheck"] = 66, -- adicionar
  

  
   -- POLICIA
  ["comandantegeral.paycheck"] = 130, -- ADICIONAR
  
  ["coronel.paycheck"] = 150,
  ["tenentecoronel.paycheck"] = 150,
  ["major.paycheck"] = 150,
  ["capitao.paycheck"] = 150,
  
  ["primeirotenente.paycheck"] = 100,
  ["segundotenente.paycheck"] = 100,
  ["subtenente.paycheck"] = 100,
  
  ["primeirosargento.paycheck"] = 90,
  ["segundosargento.paycheck"] = 90,
  ["terceirosargento.paycheck"] = 90,
  
  ["cabo.paycheck"] = 70,
  ["Soldado.paycheck"] = 70, 
  ["recruta.paycheck"] = 70,  -- ADICIONAR

  ["dg.paycheck"] = 100,      -- DELEGADO
  ["bope.paycheck"] = 150,    -- BOPE
  --["prf.paycheck"] = 700,     -- POLICIA RODOVIARIO FEDERAL
}

return cfg
