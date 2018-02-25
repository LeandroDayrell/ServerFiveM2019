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
  ["moto_boy.paycheck"] = 5500,
  ["taxista.paycheck"] = 5500,
  ["repair.paycheck"] = 5500,
  ["advogado.paycheck"] = 6500,
  ["lixeiro.paycheck"] = 5500,
  ["Pescador.paycheck"] = 5500,
  ["bus.paycheck"] = 5500,
  -- BOMBEIRO
  
  ["bombeirore.paycheck"] = 17000,
  ["bombeiro.paycheck"] = 12000,
  ["bombeirochefe.paycheck"] = 12000,
  
  -- ILEGAIS
  ["fogueteiro.paycheck"] = 2000,
  ["agiota.paycheck"] = 2000,
  
  
  -- FACÇÕES
  
  ["c.v.paycheck"] = 5000,
  ["t.c.p.paycheck"] = 5000,
  ["a.d.a.paycheck"] = 5000,
  ["braco.paycheck"] = 5000,
  
  
  -- POLICIA
  
  ["coronel.paycheck"] = 20000,
  ["tenentecoronel.paycheck"] = 18000,
  ["major.paycheck"] = 17000,
  ["capitao.paycheck"] = 16000,
  ["primeirotenente.paycheck"] = 15000,
  ["segundotenente.paycheck"] = 14000,
  ["aspirante.paycheck"] = 13000,
  ["cadete.paycheck"] =  12000,
  ["subtenente.paycheck"] = 12000,
  ["primeirosargento.paycheck"] = 10000,
  ["segundosargento.paycheck"] = 9000,
  ["terceirosargento.paycheck"] = 8000,
  ["cabo.paycheck"] = 7000,
  ["Soldado.paycheck"] = 6000,
  

  ["dg.paycheck"] = 20000,      -- DELEGADO
  ["bope.paycheck"] = 20000,    -- BOPE
  ["prf.paycheck"] = 20000,     -- POLICIA RODOVIARIO FEDERAL
  
  
}

cfg.bill = { -- ["permission"] = withdrawal
  ["moto_boy.paycheck"] = 1500,
  ["taxista.paycheck"] = 1500,
  ["repair.paycheck"] = 1500,
  ["advogado.paycheck"] = 1500,
  ["lixeiro.paycheck"] = 1500,
  ["Pescador.paycheck"] = 1500,
  ["bus.paycheck"] = 1500,
  -- BOMBEIRO
  
  ["bombeirore.paycheck"] = 2000,
  ["bombeiro.paycheck"] = 1500,
  ["bombeirochefe.paycheck"] = 12000,
  
  -- ILEGAIS
  ["fogueteiro.paycheck"] = 2000,
  ["agiota.paycheck"] = 2000,
  
  
  -- FACÇÕES
  
  ["c.v.paycheck"] = 1500,
  ["t.c.p.paycheck"] = 1500,
  ["a.d.a.paycheck"] = 1500,
  ["braco.paycheck"] = 1500,
  
  
  -- POLICIA
  
  ["coronel.paycheck"] = 2000,
  ["tenentecoronel.paycheck"] = 2000,
  ["major.paycheck"] = 2000,
  ["capitao.paycheck"] = 2000,
  ["primeirotenente.paycheck"] = 2000,
  ["segundotenente.paycheck"] = 2000,
  ["aspirante.paycheck"] = 2000,
  ["cadete.paycheck"] =  2000,
  ["subtenente.paycheck"] = 2000,
  ["primeirosargento.paycheck"] = 1500,
  ["segundosargento.paycheck"] = 1500,
  ["terceirosargento.paycheck"] = 1500,
  ["cabo.paycheck"] = 1200,
  ["Soldado.paycheck"] = 1000,
  

  ["dg.paycheck"] = 3000,      -- DELEGADO
  ["bope.paycheck"] = 3000,    -- BOPE
  ["prf.paycheck"] = 3000,     -- POLICIA RODOVIARIO FEDERAL
}

return cfg
