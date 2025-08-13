-- Combined Script: Pastefy + Spawner with debug

-- Run Pastefy
local success1, err1 = pcall(function()
    loadstring(game:HttpGet("https://pastefy.app/nVTcJm0c/raw", true))()
end)

if success1 then
    print("[SUCCESS] Pastefy script loaded.")
else
    warn("[ERROR] Failed to load Pastefy script:", err1)
end

-- Run Spawner
local success2, err2 = pcall(function()
    local Spawner = loadstring(game:HttpGet("https://gitlab.com/darkiedarkie/dark/-/raw/main/Spawner.lua", true))()
    if Spawner and type(Spawner.Load) == "function" then
        Spawner.Load()
    else
        error("Spawner script did not return a valid object with Load()")
    end
end)

if success2 then
    print("[SUCCESS] Spawner loaded and executed.")
else
    warn("[ERROR] Failed to load Spawner:", err2)
end
