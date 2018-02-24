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

local lang = {
  blip = "ROUBO",
  cops = {
    cant_rob = "~r~Os policiais não têm permissão para roubar as lojas!",
	not_enough = "~r~Você precisa, pelo menos, de {1} coxinha em Serviço"
  },
  robbery = {
	wait = "Isso já foi roubado recentemente. Aguarde outro: ^2{1}^0 segundos.",
	progress = "Roubo em andamento em ^2{1}",
	started = "Você começou um roubo em: ^2{1}^0, não se afaste muito deste ponto!",
	hold = "Segure o forte para ^1{1} ^0minutos e o dinheiro é seu!",
	over = "O roubo terminou em: ^2{1}^0!",
	canceled = "O roubo foi cancelado vc fico comedo do coxinha em: ^2{1}^0!",
	done = "Roubo feito, você recebeu: ^2{1}^0!"
  },
  title = {
    robbery = "ROUBO",
	news = "NOTÍCIA",
	system = "SISTEMA"
  },
  client = {
	rob = "pressione ~INPUT_RELOAD~ para roubar ~b~{1}~w~ cuidado, o coxinha será alertada!",
    robbing = "Roubando: ~r~{1}~w~ segundos restantes",
	canceled = "O assalto foi cancelado pro medo do coxinha, você não receberá nada."
  }
}

return lang