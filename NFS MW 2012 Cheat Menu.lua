-- Need for Speed: Most Wanted 2012 Cheat Menu Script

-- Cheat Menu
local cheatMenu = {
    { id = "invincibility", name = "Invincibility", description = "Toggle invincibility on/off" },
    { id = "unlimitedNitro", name = "Unlimited Nitro", description = "Toggle unlimited nitro on/off" },
    { id = "unlimitedSpeed", name = "Unlimited Speed", description = "Toggle unlimited speed on/off" },
    { id = "perfectHandling", name = "Perfect Handling", description = "Toggle perfect handling on/off" },
    { id = "noTraffic", name = "No Traffic", description = "Toggle no traffic on/off" },
    { id = "unlimitedMoney", name = "Unlimited Money", description = "Toggle unlimited money on/off" }
  }
  
  -- Cheat Functions
  local function toggleInvincibility()
    local player = getEntity("Player")
    if player then
      local invincibility = player:getProperty("Invincibility")
      invincibility = not invincibility
      player:setProperty("Invincibility", invincibility)
    end
  end
  
  local function toggleUnlimitedNitro()
    local player = getEntity("Player")
    if player then
      local nitro = player:getProperty("Nitro")
      nitro = not nitro
      player:setProperty("Nitro", nitro)
    end
  end
  
  local function toggleUnlimitedSpeed()
    local player = getEntity("Player")
    if player then
      local speed = player:getProperty("Speed")
      speed = not speed
      player:setProperty("Speed", speed)
    end
  end
  
  local function togglePerfectHandling()
    local player = getEntity("Player")
    if player then
      local handling = player:getProperty("Handling")
      handling = not handling
      player:setProperty("Handling", handling)
    end
  end
  
  local function toggleNoTraffic()
    local traffic = getEntity("Traffic")
    if traffic then
      local enabled = traffic:getProperty("Enabled")
      enabled = not enabled
      traffic:setProperty("Enabled", enabled)
    end
  end
  
  local function toggleUnlimitedMoney()
    local player = getEntity("Player")
    if player then
      local money = player:getProperty("Money")
      money = not money
      player:setProperty("Money", money)
    end
  end
  
  -- Cheat Menu Callbacks
  local function onCheatMenuOpen()
    for i, cheat in ipairs(cheatMenu) do
      local checkbox = createCheckbox(cheat.name, cheat.description)
      checkbox:setCallback(function(state)
        if state then
          if cheat.id == "invincibility" then
            toggleInvincibility()
          elseif cheat.id == "unlimitedNitro" then
            toggleUnlimitedNitro()
          elseif cheat.id == "unlimitedSpeed" then
            toggleUnlimitedSpeed()
          elseif cheat.id == "perfectHandling" then
            togglePerfectHandling()
          elseif cheat.id == "noTraffic" then
            toggleNoTraffic()
          elseif cheat.id == "unlimitedMoney" then
            toggleUnlimitedMoney()
          end
        end
      end)
    end
  end
  
  -- Initialize Cheat Menu
  local cheatMenuWindow = createWindow("Need for Speed: Most Wanted 2012 Cheats")
  cheatMenuWindow:setCallback(onCheatMenuOpen)
  cheatMenuWindow:setVisible(true)
  