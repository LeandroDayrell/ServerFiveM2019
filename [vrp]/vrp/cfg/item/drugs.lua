
local items = {}

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills_choices = {}
pills_choices["Usar"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"pills",1) then
      vRPclient.varyHealth(player,{25})
      vRPclient.notify(player,{"~g~ Usando Pilulas."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_smoke(player)
  local seq2 = {
    {"mp_player_int_uppersmoke","mp_player_int_smoke_enter",1},
    {"mp_player_int_uppersmoke","mp_player_int_smoke",1},
    {"mp_player_int_uppersmoke","mp_player_int_smoke_exit",1}
  }

  vRPclient.playAnim(player,{true,seq2,false})
end

local smoke_choices = {}
smoke_choices["Usar"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"cannabiis",1) then
	  vRP.varyHunger(user_id,(20))
      vRPclient.notify(player,{"~g~ Fumando uma Erva."})
      play_smoke(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_smell(player)
  local seq3 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq3,false})
end

local smell_choices = {}
smell_choices["Usar"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"baseado",1) then
	  vRP.varyThirst(user_id,(20))
      vRPclient.notify(player,{"~g~ fumando baseado."})
      play_smell(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_lsd(player)
  local seq4 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq4,false})
end

local lsd_choices = {}
lsd_choices["Usar"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"pedradecrack",1) then
	  vRP.varyThirst(user_id,(20))
      vRPclient.notify(player,{"~g~ Usando pedradecrack."})
      play_lsd(player)
      vRP.closeMenu(player)
    end
  end
end}

items["baseado"] = {"baseado","Pronto pro Uso.",function(args) return smell_choices end,0.50}
items["pedradecrack"] = {"pedradecrack","Pronto pro Uso.",function(args) return lsd_choices end,0.50}
items["pills"] = {"pills","Pronto pro Uso e Para Entrega.",function(args) return pills_choices end,0.50}

return items