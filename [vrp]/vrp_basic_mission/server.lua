
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cfg = module("vrp_basic_mission", "cfg/missions")
local lcfg = module("vrp", "cfg/base")

-- load global and local languages
local Luang = module("vrp", "lib/Luang")
local Lang = Luang()
Lang:loadLocale(lcfg.lang, module("vrp", "cfg/lang/"..lcfg.lang) or {})
Lang:loadLocale(lcfg.lang, module("vrp_basic_mission", "cfg/lang/"..lcfg.lang) or {})
lang = Lang.lang[lcfg.lang]

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Mclient = Tunnel.getInterface("vrp_basic_mission")

function task_mission()
  ----------------------- mecanico -----------------------------
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
                      vRPclient._notify(player, glang.money.received({v.reward}))
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
  -------------------------------- ladrao de carro------------------------
  for k,v in pairs(cfg.carjack) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
	  local reward = math.random(v.min_reward,v.max_reward)
      local user_id = w
      local player = vRP.getUserSource(user_id)
	  	  
      if not vRP.hasMission(player)   then
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
                        vRPclient.notify(player,lang.own_veh())
				      else
                        Mclient.freezePedVehicle(player,true)
				        Mclient.deleteVehiclePedIsIn(player)
					    vRP.giveInventoryItem(user_id,"dirty_money",reward,true)
                        vRP.nextMissionStep(player)
					  end
				  else
				    vRPclient.notify(player,lang.no_veh())
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
  
-------------------- ladrao de arma----------------
  for k,v in pairs(cfg.gunrunner) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      local pistol = math.random(0,2)
	  local shotgun = math.random(-1,2)
	  local smg = math.random(-2,2)
	  	  
      if not vRP.hasMission(player)   then
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
  
   -- -----------------------------Motorista_bancario------------------------------------------

  for k,v in pairs(cfg.Motorista_bancario) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
        if math.random(1,v.chance+1) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = lang.Motorista_bancario(v.title)
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.Motorista_bancario(v.title).."<br />"..lang.reward(v.reward),
              onenter = function(player, area)
                if vRP.tryGetInventoryItem(user_id,"bank_money",500000,true) then
                  vRPclient._playAnim(player,false,{task="CODE_HUMAN_POLICE_INVESTIGATE"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)

                    -- last step
                    if i == v.steps then
                      vRP.giveMoney(user_id,v.reward)
                      vRPclient._notify(player,glang.money.received({v.reward}))
                    end
                  end)
                end
              end,
              position = v.positions[math.random(1,#v.positions+1)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission(player,mdata)
        end
      end
    end
  end

  -- ------------------------------moto_boy-----------------------------------------------

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
					----------animacao-----
			      vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player, glang.money.received({v.reward}))
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
     -- ------------------------------carteiro-----------------------------------------------

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
									----------animacao-----
			      vRPclient._playAnim(player,{false,task="WORLD_HUMAN_TOURIST_MAP"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  carteiro_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
       -- ------------------------------limpador_de_piscina-----------------------------------------------

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
						----------animacao-----
			      vRPclient._playAnim(player,false,{task="WORLD_HUMAN_BUM_WASH"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep({player})
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
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
  
      ----------------- farmaceutico--------------------------------------------------------
  for k,v in pairs(cfg.farmaceutico) do 
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
        -- build mission
        local mdata = {}
        mdata.name = lang.farmaceutico.title()

        -- generate items
        local todo = 0
        local farmaceutico_items = {}
        for idname,data in pairs(v.items) do
          local amount = math.random(data[1],data[2])
          if amount > 0 then
            farmaceutico_items[idname] = amount
            todo = todo+1
          end
        end

        local step = {
          text = "",
          onenter = function(player, area)
            for idname,amount in pairs(farmaceutico_items) do
              if amount > 0 then -- check if not done
                if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  farmaceutico_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
        }

        -- mission display
        for idname,amount in pairs(farmaceutico_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.farmaceutico.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
          vRP.startMission(player,mdata)
        end
      end
    end
  end
  
      -- -----------------------------------hacker--------------------------------------------------------
  for k,v in pairs(cfg.hacker) do 
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
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
					--------------animacao-------------
			      vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  hacker_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep({player})
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
  
    ----------------------------------- ---------- lixeiro----------------------------------------------------
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
				 		--------------animacao-------------
			      vRPclient._playAnim(player,false,{task="PROP_HUMAN_BUM_BIN"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  lixeiro_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
  
-------------------------- ---------- pescador----------------------------------------------------
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
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  pescador_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep({player})
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
   
      -------------------------------- traficante uranio------------------------------------------
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
					--------------animacao-------------
			      vRPclient._playAnim(player,{false,task="PROP_HUMAN_PARKING_METER"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  uranio_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
  
    -------------------------------- traficante lsdt------------------------------------------
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
					--------------animacao-------------
			      vRPclient._playAnim(player,{false,task="PROP_HUMAN_PARKING_METER"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  lsdt_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
  
  -------------------------------- traficante cocaina------------------------------------------
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
          local amount = math.random(data[1],data[2]+1)
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
					--------------animacao-------------
			      vRPclient._playAnim(player,{false,task="PROP_HUMAN_PARKING_METER"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep({player})
                    vRPclient._stopAnim(player,{false})
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  cocaina_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep({player})
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
  
  -------------------------------- traficante crack------------------------------------------
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
					--------------animacao-------------
			      vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep({player})
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  crack_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
  
-------------------------------- traficante------------------------------------------
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
					--------------animacao-------------
			      vRPclient._playAnim(player,false,{task="PROP_HUMAN_PARKING_METER"},false)
                   SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
                     end)					
					-------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  traficante_items[idname] = 0
                  if todo == 0 then -- all received, finish mission
                    vRP.nextMissionStep(player)
                  end
                end
              end
            end
          end,
          position = v.positions[math.random(1,#v.positions+1)]
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
  
  ----------------------- venderdor de arma-----------------------
  for k,v in pairs(cfg.delivery) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission(k)
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource(user_id)
      if not vRP.hasMission(player) then
        -- build mission
        local mdata = {}
        mdata.name = lang.delivery.title()

        -- generate items
        local todo = 0
        local delivery_items = {}
        for idname,data in pairs(v.items) do
          local amount = math.random(data[1],data[2])
          if amount > 0 then
            delivery_items[idname] = amount
            todo = todo+1
          end
        end

        local step = {
          text = "",
          onenter = function(player, area)
            for idname,amount in pairs(delivery_items) do
              if amount > 0 then -- check if not done
                if vRP.tryGetInventoryItem(user_id,idname,amount,true) then
--------------------------------animacao-------------------------
				  vRPclient._playAnim(player,false,{task="WORLD_HUMAN_CLIPBOARD"},false)
                  SetTimeout(15000, function()
                    vRP.nextMissionStep(player)
                    vRPclient._stopAnim(player,false)
					  end)	
-----------------------------------------------------------------
                  local reward = v.items[idname][3]*amount
                  vRP.giveMoney(user_id,reward)
                  vRPclient._notify(player,glang.money.received({reward}))
                  todo = todo-1
                  delivery_items[idname] = 0
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
        for idname,amount in pairs(delivery_items) do
          local name = vRP.getItemName(idname)
          step.text = step.text..lang.delivery.item({name,amount}).."<br />"
        end

        mdata.steps = {step}

        if todo > 0 then
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
