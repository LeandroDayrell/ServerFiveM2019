local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Luang = module("vrp", "lib/Luang")
local cfg = module("vrp_basic_mission", "cfg/missions")

-- load global and local languages
local Lang = Luang()
Lang:loadLocale(cfg.lang, module("vrp", "cfg/lang/"..cfg.lang) or {})
Lang:loadLocale(cfg.lang, module("vrp_basic_mission", "cfg/lang/"..cfg.lang) or {})
lang = Lang.lang[cfg.lang]

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

function task_mission()
  -- --------------------------mecanico------------------------------------------------------------
  for k,v in pairs(cfg.repair) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = lang.repair({v.title})
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.repair({v.title}).."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if vRP.tryGetInventoryItem(user_id,"repairkit",1,true) then
                  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_WELDING"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)

                    -- last step
                    if i == v.steps then
                      vRP.giveMoney(user_id,v.reward)
                      vRPclient._notify(player,lang.money.received({v.reward}))
                    end
                  end)
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission(player,mdata)
        end
      end
    end
  end
  
-----------------------------Motorista_bancario------------------------------------------
  for k,v in pairs(cfg.Motorista_bancario) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = lang.Motorista_bancario({v.title})
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.Motorista_bancario({v.title}).."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if vRP.tryGetInventoryItem(user_id,"bank_money",500000,true) then
                  vRPclient._playAnim(player,false,{task="CODE_HUMAN_POLICE_INVESTIGATE"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)

                    -- last step
                    if i == v.steps then
                      vRP.giveMoney(user_id,v.reward)
                      vRPclient._notify(player,lang.money.received({v.reward}))
                    end
                  end)
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission(player,mdata)
           end
        end
      end
    end
		
----------------------------- trigo ------------------------------------------------------
  for k,v in pairs(cfg.trigo) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.trigo.title()

          -- generate items
          local todo = 0
          local trigo_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              trigo_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(trigo_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  trigo_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(trigo_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.trigo.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
	
----------------------------- advogado ------------------------------------------------------
  for k,v in pairs(cfg.advogado) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.advogado.title()

          -- generate items
          local todo = 0
          local advogado_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              advogado_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(advogado_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  advogado_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(advogado_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.advogado.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   		
----------------------------- sal ------------------------------------------------------
  for k,v in pairs(cfg.sal) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.sal.title()

          -- generate items
          local todo = 0
          local sal_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              sal_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(sal_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  sal_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(sal_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.sal.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   	
----------------------------- cobre ------------------------------------------------------
  for k,v in pairs(cfg.cobre) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.cobre.title()

          -- generate items
          local todo = 0
          local cobre_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              cobre_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(cobre_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  cobre_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(cobre_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.cobre.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   	   		
----------------------------- ouro ------------------------------------------------------
  for k,v in pairs(cfg.ouro) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.ouro.title()

          -- generate items
          local todo = 0
          local ouro_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              ouro_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(ouro_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                 local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  ouro_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(ouro_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.ouro.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   	
----------------------------- diamante ------------------------------------------------------
  for k,v in pairs(cfg.diamante) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.diamante.title()

          -- generate items
          local todo = 0
          local diamante_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              diamante_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(diamante_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  diamante_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(diamante_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.diamante.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   
	----------------------------- leite ------------------------------------------------------
  for k,v in pairs(cfg.leite) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.leite.title()

          -- generate items
          local todo = 0
          local leite_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              leite_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(leite_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  leite_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(leite_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.leite.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   
   ----------------------------- extase ------------------------------------------------------
  for k,v in pairs(cfg.extase) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.extase.title()

          -- generate items
          local todo = 0
          local extase_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              extase_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(extase_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  extase_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(extase_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.extase.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   
----------------------------- traficante ------------------------------------------------------
  for k,v in pairs(cfg.traficante) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.traficante.title()

          -- generate items
          local todo = 0
          local traficante_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              traficante_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(traficante_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  traficante_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(traficante_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.traficante.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   
----------------------------- traficante crack ------------------------------------------------------
  for k,v in pairs(cfg.crack) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.crack.title()

          -- generate items
          local todo = 0
          local crack_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              crack_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(crack_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  crack_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(crack_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.crack.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
    
----------------------------- traficante cocaina ------------------------------------------------------
  for k,v in pairs(cfg.cocaina) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.cocaina.title()

          -- generate items
          local todo = 0
          local cocaina_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              cocaina_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(cocaina_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  cocaina_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(cocaina_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.cocaina.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
  
 ----------------------------- traficante lsdt ------------------------------------------------------
  for k,v in pairs(cfg.lsdt) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.lsdt.title()

          -- generate items
          local todo = 0
          local lsdt_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              lsdt_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(lsdt_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  lsdt_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(lsdt_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.lsdt.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
  
 ----------------------------- traficante uranio------------------------------------------------------
  for k,v in pairs(cfg.uranio) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.uranio.title()

          -- generate items
          local todo = 0
          local uranio_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              uranio_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(uranio_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  uranio_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(uranio_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.uranio.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
  
----------------------------- pescador------------------------------------------------------
  for k,v in pairs(cfg.pescador) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.pescador.title()

          -- generate items
          local todo = 0
          local pescador_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              pescador_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(pescador_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  pescador_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(pescador_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.pescador.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
    
----------------------------- lixeiro------------------------------------------------------
  for k,v in pairs(cfg.lixeiro) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.lixeiro.title()

          -- generate items
          local todo = 0
          local lixeiro_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              lixeiro_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(lixeiro_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="PROP_HUMAN_BUM_BIN"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  lixeiro_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(lixeiro_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.lixeiro.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
   
  ----------------------------- hacker------------------------------------------------------
  for k,v in pairs(cfg.hacker) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player)  then
          -- build mission
          local mdata = {}
          mdata.name = lang.hacker.title()

          -- generate items
          local todo = 0
          local hacker_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              hacker_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(hacker_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  hacker_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(hacker_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.hacker.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
 
  ----------------------------- limpador_de_piscina------------------------------------------------------
  for k,v in pairs(cfg.limpador_de_piscina) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.limpador_de_piscina.title()

          -- generate items
          local todo = 0
          local limpador_de_piscina_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              limpador_de_piscina_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(limpador_de_piscina_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_BUM_WASH"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  limpador_de_piscina_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(limpador_de_piscina_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.limpador_de_piscina.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end

----------------------------- carteiro------------------------------------------------------
  for k,v in pairs(cfg.carteiro) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.carteiro.title()

          -- generate items
          local todo = 0
          local carteiro_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              carteiro_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(carteiro_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_TOURIST_MAP"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  carteiro_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(carteiro_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.carteiro.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end

----------------------------- moto_boy------------------------------------------------------
  for k,v in pairs(cfg.moto_boy) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
          -- build mission
          local mdata = {}
          mdata.name = lang.moto_boy.title()

          -- generate items
          local todo = 0
          local moto_boy_items = {}
          for idname,data in pairs(v.items) do
            local amount = math.random(data[1],data[2])
            if amount > 0 then
              moto_boy_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(moto_boy_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------------------------------------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)
---------------------------------------------------------------------------------					  
                local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,lang.money.received({v.reward}))
                  todo = todo-1
                  moto_boy_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions)]
        }

        -- mission display
        for idname,amount in pairs(moto_boy_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.moto_boy.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
	
 -------------------------------------ladrao de carro----------------------------
  for k,v in pairs(cfg.carjack) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
	  local reward = math.random(v.min_reward,v.max_reward)
      local user_id = w
      local player = vRP.getUserSource(user_id)
	  	  
      if not vRP.hasMission(player) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.carjack().."<br />"..lang.reward({reward}),
              onenter = function(player, area)
			    local in_veh = Mclient.isInAnyVehicle(player)
			      if in_veh then
				    local plate = Mclient.getVehiclePedIsInPlateText(player)
				    local identity = vRP.getUserIdentity(user_id)
                      if string.find(plate, identity.registration) then
                        vRPclient._notify(player,lang.own_veh())
				      else
                        Mclient.freezePedVehicle(player,true)
				        Mclient.deleteVehiclePedIsIn(player)
					    vRP.giveInventoryItem(user_id,reward,true)
                        vRP.nextMissionStep(player)
					  end
				  else
				    vRPclient._notify(player,lang.no_veh())
				  end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission(player,mdata)
		end
	  end
    end
  end
  
  ------------------------------------------traficante de arma -----------------------------------
  for k,v in pairs(cfg.gunrunner) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      local pistol = math.random(0,2)
	  local shotgun = math.random(-1,2)
	  local smg = math.random(-2,2)
	  	  
      if not vRP.hasMission(player) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.shipment(),
              onenter = function(player, area)
				if pistol > 0 then
			      vRP.giveInventoryItem(user_id,"pistol_parts",pistol,true)
			      vRP.giveInventoryItem(user_id,"wammo|WEAPON_PISTOL",math.random(50,200)*pistol,true)
				end
				if shotgun > 0 then
			      vRP.giveInventoryItem(user_id,"shotgun_parts",shotgun,true)
			      vRP.giveInventoryItem(user_id,"wammo|WEAPON_PUMPSHOTGUN",math.random(50,100)*shotgun,true)
				end
				if smg > 0 then
			      vRP.giveInventoryItem(user_id,"smg_parts",smg,true)
			      vRP.giveInventoryItem(user_id,"wammo|WEAPON_SMG",math.random(100,200)*smg,true)
				end
                vRP.nextMissionStep(player)
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission(player,mdata)
		end
	  end
    end
  end
  SetTimeout(60000,task_mission)
end
Citizen.CreateThread(function()
  task_mission()
end)
