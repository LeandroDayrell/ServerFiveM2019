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

cfg.minutes_paycheckdinheirosujo = 12 -- minutes between payment for paycheck

cfg.paycheckdinheirosujo_title_picture = "Maze Bank" -- define title for paycheck notification picture
cfg.paycheckdinheirosujo_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display

cfg.paycheckdinheirosujo = { -- ["permission"] = paycheck
  
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


return cfg
