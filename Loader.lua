local PlaceId = game.PlaceId

local Scripts = {
    [87689849729828] = "https://raw.githubusercontent.com/GGSIHLUH/Game-1-steal-scary-egg/refs/heads/main/.lua",
    [987654321] = "https://raw.githubusercontent.com/username/repo/main/game2.lua",
    [111222333] = "https://raw.githubusercontent.com/username/repo/main/game3.lua",
    [444555666] = "https://raw.githubusercontent.com/username/repo/main/game4.lua",
    [777888999] = "https://raw.githubusercontent.com/username/repo/main/game5.lua",
}

local TargetScript = Scripts[PlaceId]

if TargetScript then
    local success, err = pcall(function()
        loadstring(game:HttpGet(TargetScript))()
    end)
    
    if not success then
        warn("[Loader] Error: " .. tostring(err))
    end
else
    warn("[Loader] Place ID " .. tostring(PlaceId) .. " tidak terdaftar!")
end
