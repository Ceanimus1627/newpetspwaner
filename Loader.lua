-- Combined Script: Pastefy + Spawner
local success1, err1 = pcall(function()
    loadstring(game:HttpGet("https://pastefy.app/GwLYJ7wP/raw", true))()
end)
if not success1 then
    warn("[ERROR] Failed to load Pastefy script:", err1)
end

local success2, err2 = pcall(function()
    local Spawner = loadstring(game:HttpGet("https://gitlab.com/darkiedarkie/dark/-/raw/main/Spawner.lua"))()
    Spawner.Load()
end)
if not success2 then
    warn("[ERROR] Failed to load Spawner script:", err2)
end

