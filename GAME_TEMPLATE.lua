--[[
    SJABLOON VOOR NIEUWE GAME SCRIPTS
    
    Gebruik dit als template om nieuwe games toe te voegen aan main.lua
    
    Kopieer dit en pas aan voor jouw game!
]]

-- Vervang "GAME_NAME" met de naam van je game (bijv. "Arsenal", "BloxFruits")
local GameTab = Window:CreateTab("🎮 GAME_NAME", nil)
local GameSection = GameTab:CreateSection("GAME_NAME Scripts")

-- Voorbeeld: Button voor een script
GameTab:CreateButton({
    Name = "Script Naam",
    Callback = function()
        -- Hier komt de script code
        loadstring(game:HttpGet("SCRIPT_URL_HIER"))()
        
        -- Succes notificatie
        Rayfield:Notify({
            Title = "Success",
            Content = "Script geladen voor GAME_NAME!",
            Duration = 3,
            Image = "check",
        })
    end,
})

-- Voorbeeld: Toggle (aan/uit schakelaar)
GameTab:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Flag = "AutoFarm_GAME",
    Callback = function(Value)
        getgenv().AutoFarm = Value
        
        -- Hier komt je auto farm loop
        if Value then
            -- Auto farm aan
            spawn(function()
                while getgenv().AutoFarm do
                    wait(0.1)
                    -- Farm code hier
                end
            end)
        end
    end,
})

-- Voorbeeld: Slider
GameTab:CreateSlider({
    Name = "Farm Speed",
    Range = {1, 10},
    Increment = 0.5,
    Suffix = "x",
    CurrentValue = 1,
    Flag = "FarmSpeed_GAME",
    Callback = function(Value)
        getgenv().FarmSpeed = Value
    end,
})

-- Voorbeeld: Input veld
GameTab:CreateInput({
    Name = "Player Name",
    CurrentValue = "",
    PlaceholderText = "Enter player name...",
    RemoveTextAfterFocusLost = false,
    Flag = "PlayerName_GAME",
    Callback = function(Text)
        getgenv().TargetPlayer = Text
    end,
})

-- Voorbeeld: Dropdown menu
GameTab:CreateDropdown({
    Name = "Select Weapon",
    Options = {"Sword", "Gun", "Bow"},
    CurrentOption = {"Sword"},
    MultipleOptions = false,
    Flag = "Weapon_GAME",
    Callback = function(Option)
        getgenv().SelectedWeapon = Option
    end,
})

-- Voorbeeld: Keybind
GameTab:CreateKeybind({
    Name = "Toggle Auto Farm",
    CurrentKeybind = "F",
    HoldToInteract = false,
    Flag = "FarmKeybind_GAME",
    Callback = function(Keybind)
        -- Keybind gewijzigd
    end,
})

-- Voorbeeld: Divider (scheidingslijn)
GameTab:CreateDivider()

-- Nieuwe sectie
local GameSection2 = GameTab:CreateSection("Player Options")

-- Voorbeeld: Paragraph (tekstblok)
GameTab:CreateParagraph({
    Title = "Informatie",
    Content = "Dit is een informatieblok. Je kan hier uitleg geven over de scripts."
})

-- Voorbeeld: Label (tekst die kan updaten)
local MyLabel = GameTab:CreateLabel("Status: Idle")

-- Update het label later:
-- MyLabel:Set("Status: Farming")

--[[
    EMOJI's voor Tabs:
    
    🏠 Home
    🌐 Universal
    🎮 Gaming
    ⚙️ Settings
    
    Populaire games:
    🍇 Blox Fruits
    🔫 Arsenal
    🐾 Adopt Me
    🚔 Jailbreak
    🐶 Pet Simulator
    ⚔️ Anime games
    🏃 Parkour
    🎯 FPS games
    🏆 Competitive
    💰 Tycoon
    🏭 Simulator
    ⚡ Action
    🧩 Puzzle
    
    Icons:
    ⭐ Featured
    🔥 Popular
    🆕 New
    ✅ Working
    ⚠️ Beta
    🔧 Utilities
    👤 Player
    💪 Combat
    🎨 Visual
    📊 Stats
    🔒 Premium
]]

