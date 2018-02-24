local lang = vRP.lang

-- Money module, wallet/bank API
-- The money is managed with direct SQL requests to prevent most potential value corruptions
-- the wallet empty itself when respawning (after death)

MySQL.createCommand("vRP/money_tables", [[
CREATE TABLE IF NOT EXISTS vrp_user_moneys(
  user_id INTEGER,
  wallet INTEGER,
  bank INTEGER,
  dinheirosujo INTEGER,
  bankdinheirosujo INTEGER,
  CONSTRAINT pk_user_moneys PRIMARY KEY(user_id),
  CONSTRAINT fk_user_moneys_users FOREIGN KEY(user_id) REFERENCES vrp_users(id) ON DELETE CASCADE
);
]])

MySQL.createCommand("vRP/money_init_user","INSERT IGNORE INTO vrp_user_moneys(user_id,wallet,bank,dinheirosujo,bankdinheirosujo) VALUES(@user_id,@wallet,@bank,@dinheirosujo,@bankdinheirosujo)")
MySQL.createCommand("vRP/get_money","SELECT wallet,bank,dinheirosujo,bankdinheirosujo FROM vrp_user_moneys WHERE user_id = @user_id")
MySQL.createCommand("vRP/set_money","UPDATE vrp_user_moneys SET wallet = @wallet, bank = @bank, dinheirosujo = @dinheirosujo, bankdinheirosujo = @bankdinheirosujo WHERE user_id = @user_id")

-- init tables
async(function()
  MySQL.execute("vRP/money_tables")
end)

-- load config
local cfg = module("cfg/money")

-- API

-- get moneya
-- cbreturn nil if error
function vRP.getMoney(user_id)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    return tmp.wallet or 0
  else
    return 0
  end
end

-- set money
function vRP.setMoney(user_id,value)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    tmp.wallet = value
  end

  -- update client display
  local source = vRP.getUserSource(user_id)
  if source then
    vRPclient._setDivContent(source,"money",lang.money.display({value}))
  end
end

-- try a payment
-- return true or false (debited if true)
function vRP.tryPayment(user_id,amount)
  local money = vRP.getMoney(user_id)
  if amount >= 0 and money >= amount then
    vRP.setMoney(user_id,money-amount)
    return true
  else
    return false
  end
end

-- give money
function vRP.giveMoney(user_id,amount)
  if amount > 0 then
    local money = vRP.getMoney(user_id)
    vRP.setMoney(user_id,money+amount)
  end
end


-------------------------------------------------------------
------------------- DINHEIRO SUJO ------------------------------

-- get money
-- cbreturn nil if error
function vRP.getDinheirosujo(user_id)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    return tmp.dinheirosujo or 0
  else
    return 0
  end
end



-- set money
function vRP.setDinheirosujo(user_id,value)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    tmp.dinheirosujo = value
  end

  -- update client display
  local source = vRP.getUserSource(user_id)
  if source then
    vRPclient._setDivContent(source,"dinheirosujo",lang.dinheirosujo.display({value}))
  end
end



function vRP.giveDinheirosujo(user_id,amount)
  if amount > 0 then
    local dinheirosujo = vRP.getDinheirosujo(user_id)
    vRP.setDinheirosujo(user_id,dinheirosujo+amount)
  end
end

-- try a payment
-- return true or false (debited if true)
function vRP.tryDinheirosujo(user_id,amount)
  local dinheirosujo = vRP.getDinheirosujo(user_id)
  if amount >= 0 and dinheirosujo >= amount then
    vRP.setDinheirosujo(user_id,dinheirosujo-amount)
    return true
  else
    return false
  end
end


---------------------------------------------------------------
-----------------------------------------------------------------

-- get bank money
function vRP.getBankMoney(user_id)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    return tmp.bank or 0
  else
    return 0
  end
end

-- set bank money
function vRP.setBankMoney(user_id,value)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    tmp.bank = value
  end
  local source = vRP.getUserSource(user_id)
  if source ~= nil then
    vRPclient._setDivContent(source,"bmoney",lang.money.display({value}))
  end
end

-- give bank money
function vRP.giveBankMoney(user_id,amount)
  if amount > 0 then
    local money = vRP.getBankMoney(user_id)
    vRP.setBankMoney(user_id,money+amount)
  end
end

-- try a withdraw
-- return true or false (withdrawn if true)
function vRP.tryWithdraw(user_id,amount)
  local money = vRP.getBankMoney(user_id)
  if amount >= 0 and money >= amount then
    vRP.setBankMoney(user_id,money-amount)
    vRP.giveMoney(user_id,amount)
    return true
  else
    return false
  end
end

-- try a deposit
-- return true or false (deposited if true)
function vRP.tryDeposit(user_id,amount)
  if amount >= 0 and vRP.tryPayment(user_id,amount) then
    vRP.giveBankMoney(user_id,amount)
    return true
  else
    return false
  end
end

-- try full payment (wallet + bank to complete payment)
-- return true or false (debited if true)
function vRP.tryFullPayment(user_id,amount)
  local money = vRP.getMoney(user_id)
  if money >= amount then -- enough, simple payment
    return vRP.tryPayment(user_id, amount)
  else  -- not enough, withdraw -> payment
    if vRP.tryWithdraw(user_id, amount-money) then -- withdraw to complete amount
      return vRP.tryPayment(user_id, amount)
    end
  end

  return false
end


----------------------------------------------------------


-- get bank money
function vRP.getBankDinheirosujo(user_id)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    return tmp.bankdinheirosujo or 0
  else
    return 0
  end
end

-- set bank money
function vRP.setBankDinheirosujo(user_id,value)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    tmp.bankdinheirosujo = value
  end
  local source = vRP.getUserSource(user_id)
  if source ~= nil then
    vRPclient._setDivContent(source,"bdinheirosujo",lang.money.display({value}))
  end
end

-- give bank dinheirosujo
function vRP.giveBankDinheirosujo(user_id,amount)
  if amount > 0 then
    local dinheirosujo = vRP.getBankDinheirosujo(user_id)
    vRP.setBankDinheirosujo(user_id,dinheirosujo+amount)
  end
end

-- try a withdraw
-- return true or false (withdrawn if true)
function vRP.trySBankDinheirosujo(user_id,amount)
  local dinheirosujo = vRP.getBankDinheirosujo(user_id)
  if amount >= 0 and dinheirosujo >= amount then
    vRP.setBankDinheirosujo(user_id,dinheirosujo-amount)
    vRP.giveDinheirosujo(user_id,amount)
    return true
  else
    return false
  end
end

-- try a deposit
-- return true or false (deposited if true)
function vRP.tryDBankDinheirosujo(user_id,amount)
  if amount >= 0 and vRP.tryDinheirosujo(user_id,amount) then
    vRP.giveBankDinheirosujo(user_id,amount)
    return true
  else
    return false
  end
end

-- try full payment (wallet + bank to complete payment)
-- return true or false (debited if true)
function vRP.tryFullPaymentBDinheirosujo(user_id,amount)
  local dinheirosujo = vRP.getDinheirosujo(user_id)
  if dinheirosujo >= amount then -- enough, simple payment
    return vRP.tryDinheirosujo(user_id, amount)
  else  -- not enough, withdraw -> payment
    if vRP.trySBankDinheirosujo(user_id, amount-dinheirosujo) then -- withdraw to complete amount
      return vRP.tryDinheirosujo(user_id, amount)
    end
  end

  return false
end







----------------------------------------------------------


-- events, init user account if doesn't exist at connection
AddEventHandler("vRP:playerJoin",function(user_id,source,name,last_login)
   MySQL.execute("vRP/money_init_user", {user_id = user_id, wallet = cfg.open_wallet, bank = cfg.open_bank, dinheirosujo = cfg.open_dinheirosujo, bankdinheirosujo = cfg.open_bankdinheirosujo})
  -- load money (wallet,bank,dirtymoney)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp then
    local rows = MySQL.query("vRP/get_money", {user_id = user_id})
    if #rows > 0 then
      tmp.bank = rows[1].bank
      tmp.wallet = rows[1].wallet
      tmp.dinheirosujo = rows[1].dinheirosujo
	  tmp.bankdinheirosujo = rows[1].bankdinheirosujo
    end
  end
end)

-- save money on leave
AddEventHandler("vRP:playerLeave",function(user_id,source)
  -- (wallet,bank,dirtymoney)
  local tmp = vRP.getUserTmpTable(user_id)
  if tmp and tmp.wallet and tmp.bank and  tmp.dinheirosujo and tmp.bankdinheirosujo then
    MySQL.execute("vRP/set_money", {user_id = user_id, wallet = tmp.wallet, bank = tmp.bank, dinheirosujo = tmp.dinheirosujo, bankdinheirosujo = tmp.bankdinheirosujo})
  end
end)

-- save money (at same time that save datatables)
AddEventHandler("vRP:save", function()
  for k,v in pairs(vRP.user_tmp_tables) do
    if v.wallet and v.bank and v.dinheirosujo then
      MySQL.execute("vRP/set_money", {user_id = k, wallet = v.wallet, bank = v.bank, dinheirosujo = v.dinheirosujo, bankdinheirosujo = v.bankdinheirosujo})
    end
  end
end)

-- money hud
AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  if first_spawn then
    -- add money display
  vRPclient._setDiv(source,"money",cfg.display_css,lang.money.display({vRP.getMoney(user_id)}))
	vRPclient._setDiv(source,"bmoney",cfg.display_css,lang.money.display({vRP.getBankMoney(user_id)}))
  vRPclient._setDiv(source,"dinheirosujo",cfg.display_css,lang.dinheirosujo.display({vRP.getDinheirosujo(user_id)}))
  vRPclient._setDiv(source,"bdinheirosujo",cfg.display_css,lang.bdinheirosujo.display({vRP.getBankDinheirosujo(user_id)}))

  end
end)

local function ch_give(player,choice)
  -- get nearest player
  local user_id = vRP.getUserId(player)
  if user_id then
    local nplayer = vRPclient.getNearestPlayer(player,10)
    if nplayer then
      local nuser_id = vRP.getUserId(nplayer)
      if nuser_id then
        -- prompt number
        local amount = vRP.prompt(player,lang.money.give.prompt(),"")
        local amount = parseInt(amount)
        if amount > 0 and vRP.tryPayment(user_id,amount) then
          vRP.giveMoney(nuser_id,amount)
          vRPclient._notify(player,lang.money.given({amount}))
          vRPclient._notify(nplayer,lang.money.received({amount}))
        else
          vRPclient._notify(player,lang.money.not_enough())
        end
      else
        vRPclient._notify(player,lang.common.no_player_near())
      end
    else
      vRPclient._notify(player,lang.common.no_player_near())
    end
  end
end

-- add player give money to main menu
vRP.registerMenuBuilder("main", function(add, data)
  local user_id = vRP.getUserId(data.player)
  if user_id then
    local choices = {}
    choices[lang.money.give.title()] = {ch_give, lang.money.give.description()}

    add(choices)
  end
end)



local function ch_giveDinheirosujo(player,choice)
  -- get nearest player
  local user_id = vRP.getUserId(player)
  if user_id then
    local nplayer = vRPclient.getNearestPlayer(player,10)
    if nplayer then
      local nuser_id = vRP.getUserId(nplayer)
      if nuser_id then
        -- prompt number
        local amount = vRP.prompt(player,lang.dinheirosujo.give.prompt(),"")
        local amount = parseInt(amount)
        if amount > 0 and vRP.tryDinheirosujo(user_id,amount) then
          vRP.giveDinheirosujo(nuser_id,amount)
            vRPclient._notify(player,{lang.dinheirosujo.given({amount})})
            vRPclient._notify(nplayer,{lang.dinheirosujo.received({amount})})
        else
          vRPclient._notify(player,lang.dinheirosujo.not_enough())
        end
      else
        vRPclient._notify(player,lang.common.no_player_near())
      end
    else
      vRPclient._notify(player,lang.common.no_player_near())
    end
  end
end



-- add player give money to main menu
vRP.registerMenuBuilder("main", function(add, data)
  local user_id = vRP.getUserId(data.player)
  if user_id then
    local choices = {}
    choices[lang.dinheirosujo.give.title()] = {ch_giveDinheirosujo, lang.dinheirosujo.give.description()}

    add(choices)
  end
end)