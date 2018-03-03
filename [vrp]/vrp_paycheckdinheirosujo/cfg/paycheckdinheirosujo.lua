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
cfg.message_paycheckdinheirosujo = "Sua favela rendeu um dinheiro: ~g~$" -- message that will show before payment of salary
cfg.post = "." -- message that will show after payment

cfg.bankdinheirosujo = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheckdinheirosujo = 30 -- minutes between payment for paycheck

cfg.paycheckdinheirosujo_title_picture = "Maze Bank" -- define title for paycheck notification picture
cfg.paycheckdinheirosujo_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display

cfg.paycheckdinheirosujo = { -- ["permission"] = paycheck
  
  -- CHEFE
  ["c.v.paycheckdinheirosujoc"] = 1400,
  ["t.c.p.paycheckdinheirosujoc"] = 1400,
  ["a.d.a.paycheckdinheirosujoc"] = 1400,
  ["t.c.a.paycheckdinheirosujoc"] = 1400,
  
  
   -- braço
  ["c.v.paycheckdinheirosujob"] = 1200,
  ["t.c.p.paycheckdinheirosujob"] = 1200,
  ["a.d.a.paycheckdinheirosujob"] = 1200,
  ["t.c.a.paycheckdinheirosujob"] = 1200,
  
  -- SOLDADO
  ["c.v.paycheckdinheirosujoss"] = 1060,
  ["t.c.p.paycheckdinheirosujoss"] = 1060,
  ["t.c.a.paycheckdinheirosujoss"] = 1060,
  ["a.d.a.paycheckdinheirosujoss"] = 1060,
}


return cfg
