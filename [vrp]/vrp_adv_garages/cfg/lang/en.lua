
local lang = {
  garage = {
    buy = {
	  item = "{2} {1}<br /><br />{3}",
	  request = "Tem certeza de que deseja comprar este veiculo?",
	},
    keys = {
	  title = "Chaves",
	  key = "Chaves ({1})",
	  description = "Verifique as chaves do seu veiculo",
	  sell = {
	    title = "Vender",
		prompt = "Valor da oferta:",
	    owned = "O veiculo ja possuía",
		request = "Voce aceita a oferta de comprar um {1} para {2}?",
		description = "Oferecer para vender o veiculo ao jogador mais proximo"
	  }
	},
    personal = {
	  client = {
	    locked = "Veiculo trancado",
		unlocked = "Veiculo desbloqueado"
	  },
	  out = "Veiculo deste tipo ja esta fora",
	  bought = "Veiculo enviado para sua garagem",
	  sold = "Veiculo vendido",
	  stored = "Veiculo armazenado",
	  toofar = "Veiculo muito distante"	  
	},
	showroom = {
	  title = "Showroom",
	  description = "Pressione para a direita para ver o carro e entrar para compra-lo"
	},
    shop = {
	  title = "Shop",
	  description = "Percorrer as modificacoes do veiculo",
	  client = {
	    nomods = "~r~Nenhuma modificacao deste tipo para este veiculo",
		maximum = "Voce alcancou o ~y~maximo~w~ valor para esta modificacao",
		minimum = "Voce alcancou o ~r~maximo~w~ valor para esta modificacao",
	    toggle = {
		  applied = "~g~Modificacao aplicada",
		  removed = "~r~Modificacao removida"
		}
	  },
	  mods = {
	    title = "Modificacoes",
		info = "Percorrer modificacoes",
	  },
	  repair = {
	    title = "Reparar",
		info = "Corrija seu veiculo",
	  },
	  colour = {
	    title = "Cor",
		info = "Percorrer as cores do veiculo",
		primary = "Cor primaria",
		secondary = "Cor secundaria",
	    extra = {
		  title = "Cor Extra",
		  info = "Percorrer cores extras",
	      pearlescent = "Pearlescent Color",
	      wheel = "Cor da roda",
	      smoke = "Cor do fumo",
		},
		custom = {
		  primary = "Cor primaria personalizada",
		  secondary = "Cor secundaria personalizada",
		},
	  },
	  neon = {
	    title = "Luz neon",
		info = "Mude as luzes de neon",
	    front = "Front Neon",
	    back = "Back Neon",
	    left = "Left Neon",
	    right = "Right Neon",
	    colour = "Neon Color"
	  }
	}
  }
}

return lang
