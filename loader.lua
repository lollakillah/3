--[[
    Inovo Productions Script Hub - Loader
    
    Load this script with:
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lollakillah/3/main/loader.lua"))()
]]

-- Check if already loaded
if getgenv().InovoProductionsLoaded then
    warn("Inovo Productions is already loaded!")
    return
end

getgenv().InovoProductionsLoaded = true

-- Loading notification
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Inovo Productions";
    Text = "Loading Script Hub...";
    Duration = 3;
})

-- Load the main script
local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lollakillah/3/main/main.lua"))()
end)

if not success then
    warn("Failed to load Inovo Productions: " .. tostring(err))
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Inovo Productions";
        Text = "Failed to load! Check console for details.";
        Duration = 5;
    })
else
    print("Inovo Productions loaded successfully!")
end
