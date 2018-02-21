local htmlEntities = module("lib/htmlEntities")
local Tools = module("lib/Tools")

local function choice_tpprisao(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id then
	vRPclient._teleport(player,x,y,z)
   end
  
end

local function choice_tpprefeitura(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id then
	vRPclient._teleport(player,x,y,z)
   end
  
end

local function choice_tpconcessionaria(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id then
	vRPclient._teleport(player,x,y,z)
   end
  
end

local function choice_tpdetran(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id then
	vRPclient._teleport(player,x,y,z)
   end
  
end

local function choice_tpdp(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id then
	vRPclient._teleport(player,441.203308105469, -981.135131835938, 30.6896057128906)
   end
  
end


-- add choices to the menu
vRP.registerMenuBuilder("main", function(add, data)
  local player = data.player

  local user_id = vRP.getUserId(player)
  if user_id then
    local choices = {}

    if vRP.hasPermission(user_id,"admin2") then
      -- build police menu
      choices[lang.admin2.title()] = {function(player,choice)
        local menu = vRP.buildMenu("Admin TP", {player = player})
        menu.name = lang.admin2.title()
        menu.css = {top="75px",header_color="rgba(0,125,255,0.75)"}

        if vRP.hasPermission(user_id,"TP_Prisao") then
          menu["TP Prisao"] = {choice_tpprisao}
        end
		if vRP.hasPermission(user_id,"TP_Prefeitura") then
          menu["TP Prefeitura"] = {choice_tpprefeitura}
        end
		if vRP.hasPermission(user_id,"TP_Concessionaria") then
          menu["TP Concessionaria"] = {choice_tpconcessionaria}
        end
		if vRP.hasPermission(user_id,"TP_Detran") then
          menu["TP Detran"] = {choice_tpdetran}
		end
		if vRP.hasPermission(user_id,"TP_dp") then
          menu["TP Delegacia"] = {choice_tpdp}
        end

-- menu["Teleporta player para mim"] = {ch_tptome}
    add(choices)
  end
end)