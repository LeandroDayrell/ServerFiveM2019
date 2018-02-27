
-- a basic ATM implementation

local lang = vRP.lang
local cfg = module("cfg/atmsdinheirosujo")
local atmsdinheirosujo = cfg.atmsdinheirosujo

local function play_atm_enter(player)
  vRPclient._playAnim(player,false,{{"amb@prop_human_atm@male@enter","enter"},{"amb@prop_human_atm@male@idle_a","idle_a"}},false)
end

local function play_atm_exit(player)
  vRPclient._playAnim(player,false,{{"amb@prop_human_atm@male@exit","exit"}},false)
end

local function atm_choice_deposit(player,choice)
  play_atm_enter(player) --anim

  local v = vRP.prompt(source,lang.atmdinheirosujo.deposit.prompt(),"")
  play_atm_exit(player)

  v = parseInt(v)

  if v > 0 then
    local user_id = vRP.getUserId(source)
    if user_id then
      if vRP.tryDBankDinheirosujo(user_id,v) then
        TriggerClientEvent("pNotify:SendNotification",player,{text = "Depositado <span color='red'>" ..v.. "R$</span> ", type = "info", timeout = (3000),layout = "centerLeft"})
      else
        TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color='red'>Você não tem dinheiro suficiente</span>", type = "error", timeout = (3000),layout = "centerLeft"})
      end
    end
  else
    TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color='red'>Valor inválido</span>", type = "error", timeout = (3000),layout = "centerLeft"})
  end
end

local function atm_choice_withdraw(player,choice)
  play_atm_enter(player)

  local v = vRP.prompt(source,lang.atmdinheirosujo.withdraw.prompt(),"")
  play_atm_exit(player) --anim

  v = parseInt(v)

  if v > 0 then
    local user_id = vRP.getUserId(source)
    if user_id then
      if vRP.trySBankDinheirosujo(user_id,v) then
        TriggerClientEvent("pNotify:SendNotification",player,{text = "Retirado <span color='red'>" ..v.. "R$</span> ", type = "info", timeout = (3000),layout = "centerLeft"})
      else
        TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color='red'>Você não tem dinheiro suficiente no banco</span>", type = "error", timeout = (3000),layout = "centerLeft"})
      end
    end
  else
    TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color='red'>Valor inválido</span>", type = "error", timeout = (3000),layout = "centerLeft"})
  end
end

local atm_menu = {
  name=lang.atmdinheirosujo.title(),
  css={top = "75px", header_color="rgba(0,255,125,0.75)"}
}

atm_menu[lang.atmdinheirosujo.deposit.title()] = {atm_choice_deposit,lang.atmdinheirosujo.deposit.description()}
atm_menu[lang.atmdinheirosujo.withdraw.title()] = {atm_choice_withdraw,lang.atmdinheirosujo.withdraw.description()}

local function atm_enter(source)
  local user_id = vRP.getUserId(source)
  if user_id then
    atm_menu[lang.atmdinheirosujo.info.title()] = {function()end,lang.atmdinheirosujo.info.bank({vRP.getBankDinheirosujo(user_id)})}
    vRP.openMenu(source,atm_menu) 
  end
end

local function atm_leave(source)
  vRP.closeMenu(source) 
end

local function build_client_atmsdinheirosujo(source)
  local user_id = vRP.getUserId(source)
  if user_id then
    for k,v in pairs(atmsdinheirosujo) do
      local x,y,z = table.unpack(v)

      vRPclient._addBlip(source,x,y,z,108,1,lang.atmdinheirosujo.title())
      vRPclient._addMarker(source,x,y,z-1,1.1,1.1,1.7,0,255,125,125,150)

      vRP.setArea(source,"vRP:atm"..k,x,y,z,1,1.5,atm_enter,atm_leave)
    end
  end
end

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
  if first_spawn then
    build_client_atmsdinheirosujo(source)
  end
end)
