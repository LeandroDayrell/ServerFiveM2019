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
  dmv = {
    police = {
	  check = "Verifique a CNH",
	  take = "Tire uma CNH",
	  perm_ask = "police.asklc",
	  perm_take = "police.takelc",
	  check_desc = "Verifique a CNH do jogador mais próximo.",
	  take_desc = "Pegue a CNH do jogador mais próximo.",
	  ask = "Pedir CNH ...",
	  request = "Deseja mostrar sua CNH?",
	  request_hide = "Esconda o cartão de CNH.",
	  confirm = "Tem certeza de que quer tomar esta CNH?",
	  license = "<em>Nome: </em>{1}<br /><em>Sobrenome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>Cadastro n°: </em>{4}<br /><em>telefone: </em>{5}<br /><em>data: </em>{6}",
	  no_license = "~r~Este jogador não tem CNH!",
	  took_license = "~g~A CNH foi removida.",
	  license_taken = "~r~Sua CNH foi removida!"
    },
  },
  client = {
    locked = "~r~Bloqueado",
	failed = "Você falhou\você acumulou {1} ~r~Pontos de erro",
	passed = "Você passou\você acumulou {1} ~r~Pontos de erro",
	proceed = "~b~O teste passou, agora você pode seguir o teste de condução",
	try_again = "~r~Você falhou no teste, você pode tentar novamente outro dia",
	no_license = "~r~Você está dirigindo sem uma CNH",
	interact = "Pressione ~INPUT_CONTEXT~ para interagir com ~y~O responsavel do Detran",
	welcome = "~b~Bem vindo à ~h~Detran!",
	menu = {
	  obtain = "Obter uma carteira de motorista",
	  intro = "Introdução GRATUITA",
	  theory = "Teste de teoria   200$",
	  practical = "Teste prático    500$",
	  mreturn = "Retorna",
	  mclose = "Fechar",
	},
	control = {
	  enabled = "~y~Controle de cruzeiro: ~g~ativado\n~s~Velocidade máxima {1}kmh",
	  disabled = "~y~Controle de cruzeiro: ~r~Desativado",
	  help = "Ajuste sua velocidade máxima com ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ controles",
	  speed = "Velocidade máxima ajustada para {1}kmh",
	  cant_leave = "Você não pode deixar o veículo durante o teste",
	  not_dirving = "Você precisa estar dirigindo para executar esta ação",
	},
    pnotify = {
      speeding = "Você está acelerando! <b style='color:#B22222'>Desacelere!</b><br /><br />Você está dirigindo em um <b style='color:#DAA520'>{1} km/h</b> zona!",
	  damaged = "O veículo era <b style='color:#B22222'>estragado!</b><br /><br />Assista!",
	  area = "Área: ~y~{1}\n~s~Limite de velocidade: ~y~{2} km/h\n~s~Pontos de erro: ~y~{3}/{4}",
	},
  },
}

return lang