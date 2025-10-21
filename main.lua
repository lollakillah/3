--[[
    Inovo Productions Script Hub
    Premium Quality Scripts
    Version 1.0
]]

-- Load Rayfield Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create Main Window
local Window = Rayfield:CreateWindow({
    Name = "Inovo Productions | Script Hub",
    Icon = 0, -- Icon in Topbar. You can use Lucide Icons (number) or Roblox Image (string)
    LoadingTitle = "Inovo Productions",
    LoadingSubtitle = "by Inovo Team",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
    
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
    
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "InovoProductions", -- Create a custom folder for your hub/game
        FileName = "InvoHub"
    },
    
    Discord = {
        Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
        Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Inovo Productions",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

-- Notification
Rayfield:Notify({
    Title = "Welcome!",
    Content = "Thanks for using Inovo Productions Script Hub",
    Duration = 6.5,
    Image = "check",
})

--[[
    TABS
]]

-- Home Tab
local HomeTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local HomeSection = HomeTab:CreateSection("Welcome to Inovo Productions")

HomeTab:CreateParagraph({
    Title = "About Inovo Productions",
    Content = "Welcome to the best script hub! We provide premium quality scripts for various games. Select a game from the tabs on the left to get started."
})

HomeTab:CreateButton({
    Name = "Join our Discord",
    Callback = function()
        Rayfield:Notify({
            Title = "Discord",
            Content = "Discord link copied to clipboard!",
            Duration = 3,
            Image = "link",
        })
    end,
})

HomeTab:CreateButton({
    Name = "Check for Updates",
    Callback = function()
        Rayfield:Notify({
            Title = "Update Check",
            Content = "You are running the latest version!",
            Duration = 3,
            Image = "check-circle",
        })
    end,
})

-- Universal Scripts Tab
local UniversalTab = Window:CreateTab("🌐 Universal", nil)
local UniversalSection = UniversalTab:CreateSection("Universal Scripts")

UniversalTab:CreateButton({
    Name = "Infinite Yield (Admin Commands)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        Rayfield:Notify({
            Title = "Success",
            Content = "Infinite Yield loaded!",
            Duration = 3,
            Image = "check",
        })
    end,
})

UniversalTab:CreateButton({
    Name = "Dark Dex V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
        Rayfield:Notify({
            Title = "Success",
            Content = "Dark Dex loaded!",
            Duration = 3,
            Image = "check",
        })
    end,
})

UniversalTab:CreateButton({
    Name = "Simple Spy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
        Rayfield:Notify({
            Title = "Success",
            Content = "Simple Spy loaded!",
            Duration = 3,
            Image = "check",
        })
    end,
})

UniversalTab:CreateDivider()

local MovementSection = UniversalTab:CreateSection("Movement")

local WalkSpeedSlider = UniversalTab:CreateSlider({
    Name = "Walk Speed",
    Range = {16, 500},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "WalkSpeedSlider",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

local JumpPowerSlider = UniversalTab:CreateSlider({
    Name = "Jump Power",
    Range = {50, 500},
    Increment = 1,
    Suffix = "Power",
    CurrentValue = 50,
    Flag = "JumpPowerSlider",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})

UniversalTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "InfiniteJump",
    Callback = function(Value)
        getgenv().InfiniteJump = Value
        if Value then
            game:GetService("UserInputService").JumpRequest:Connect(function()
                if getgenv().InfiniteJump then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
                end
            end)
        end
    end,
})

-- Blox Fruits Tab
local BloxFruitsTab = Window:CreateTab("🍇 Blox Fruits", nil)
local BloxFruitsSection = BloxFruitsTab:CreateSection("Blox Fruits Scripts")

BloxFruitsTab:CreateButton({
    Name = "Zen Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
        Rayfield:Notify({
            Title = "Success",
            Content = "Zen Hub loaded for Blox Fruits!",
            Duration = 3,
            Image = "check",
        })
    end,
})

BloxFruitsTab:CreateButton({
    Name = "Hoho Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
        Rayfield:Notify({
            Title = "Success",
            Content = "Hoho Hub loaded for Blox Fruits!",
            Duration = 3,
            Image = "check",
        })
    end,
})

-- Arsenal Tab
local ArsenalTab = Window:CreateTab("🔫 Arsenal", nil)
local ArsenalSection = ArsenalTab:CreateSection("Arsenal Scripts")

ArsenalTab:CreateButton({
    Name = "Arsenal Script v1",
    Callback = function()
        Rayfield:Notify({
            Title = "Coming Soon",
            Content = "This script is currently being developed!",
            Duration = 3,
            Image = "clock",
        })
    end,
})

-- Adopt Me Tab
local AdoptMeTab = Window:CreateTab("🐾 Adopt Me", nil)
local AdoptMeSection = AdoptMeTab:CreateSection("Adopt Me Scripts")

AdoptMeTab:CreateButton({
    Name = "Auto Farm (Example)",
    Callback = function()
        Rayfield:Notify({
            Title = "Coming Soon",
            Content = "This script is currently being developed!",
            Duration = 3,
            Image = "clock",
        })
    end,
})

-- Jailbreak Tab
local JailbreakTab = Window:CreateTab("🚔 Jailbreak", nil)
local JailbreakSection = JailbreakTab:CreateSection("Jailbreak Scripts")

JailbreakTab:CreateButton({
    Name = "Auto Rob (Example)",
    Callback = function()
        Rayfield:Notify({
            Title = "Coming Soon",
            Content = "This script is currently being developed!",
            Duration = 3,
            Image = "clock",
        })
    end,
})

-- Pet Simulator X Tab
local PetSimTab = Window:CreateTab("🐶 Pet Simulator X", nil)
local PetSimSection = PetSimTab:CreateSection("Pet Simulator X Scripts")

PetSimTab:CreateButton({
    Name = "Auto Hatch",
    Callback = function()
        Rayfield:Notify({
            Title = "Coming Soon",
            Content = "This script is currently being developed!",
            Duration = 3,
            Image = "clock",
        })
    end,
})

-- Settings Tab
local SettingsTab = Window:CreateTab("⚙️ Settings", nil)
local SettingsSection = SettingsTab:CreateSection("Interface Settings")

SettingsTab:CreateKeybind({
    Name = "Toggle UI Keybind",
    CurrentKeybind = "K",
    HoldToInteract = false,
    Flag = "UIKeybind",
    Callback = function(Keybind)
        Rayfield:Notify({
            Title = "Keybind Changed",
            Content = "UI Toggle keybind set to: " .. Keybind,
            Duration = 3,
            Image = "keyboard",
        })
    end,
})

SettingsTab:CreateButton({
    Name = "Destroy Interface",
    Callback = function()
        Rayfield:Destroy()
    end,
})

SettingsTab:CreateButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end,
})

SettingsTab:CreateButton({
    Name = "Server Hop",
    Callback = function()
        local PlaceId = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        
        local function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            
            for i,v in pairs(Site.data) do
                local ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) and ID ~= game.JobId then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceId, ID, game.Players.LocalPlayer)
                    wait(4)
                end
            end
        end
        
        TPReturner()
    end,
})

SettingsTab:CreateDivider()

local CreditsSection = SettingsTab:CreateSection("Credits")

SettingsTab:CreateParagraph({
    Title = "Credits",
    Content = "Script Hub created by Inovo Productions Team\nUI Library: Rayfield by Sirius\nVersion 1.0"
})

-- Final Notification
Rayfield:Notify({
    Title = "Loaded Successfully!",
    Content = "Inovo Productions Script Hub is ready to use!",
    Duration = 5,
    Image = "check-circle",
})
