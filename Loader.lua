local VERSION  = "9.5"          -- Ganti dengan versi script kamu (contoh: "1.0", "2.1", "3.0")
local HUB_NAME = "YSSHub"      -- Ganti dengan nama hub kamu (contoh: "Vexon", "MyHub", "ProScript")

-- ============================================================
-- 2. DAFTAR GAME YANG DIDUKUNG
-- ============================================================
--[[
    Format:
    [UniverseId] = "https://raw.githubusercontent.com/GGSIHLUH/Game-2-bike-for-animals/refs/heads/main/Game.Lua"

    Cara mendapatkan UniverseId:
    • Masuk ke game yang ingin didukung
    • Ketik di console executor: print(game.GameId)
    • Atau cek di URL game Roblox

    Cara mendapatkan Link Raw GitHub:
    1. Upload file .lua ke repository GitHub
    2. Buka file tersebut
    3. Klik tombol "Raw"
    4. Copy link yang muncul (biasanya mengandung /raw/)

    Contoh link yang benar:
    https://raw.githubusercontent.com/Username/NamaRepo/main/NamaScript.lua
]]

local games = {
    -- Contoh format (ganti semua dengan data asli kamu):
    
    [87689849729828] = "https://raw.githubusercontent.com/GGSIHLUH/Game-1-steal-scary-egg/refs/heads/main/.lua",
    [74023858073178] = "https://raw.githubusercontent.com/GGSIHLUH/Game-2-bike-for-animals/refs/heads/main/Game.Lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script3.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script4.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script5.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script6.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script7.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script8.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script9.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script10.lua",
    [000000000] = "https://raw.githubusercontent.com/Username/RepoName/main/Script11.lua",

    -- Tambah game baru di sini:
    -- [UniverseIdBaru] = "https://raw.githubusercontent.com/Username/RepoName/main/ScriptBaru.lua",
}

-- ============================================================
-- 3. DETEKSI GAME (JANGAN DIUBAH)
-- ============================================================
local universeId = game.GameId
local placeId    = game.PlaceId
local scriptURL  = games[universeId]

-- ============================================================
-- 4. PRINT INFO
-- ============================================================
print(string.format("[%s v%s] PlaceId: %d | UniverseId: %d", HUB_NAME, VERSION, placeId, universeId))

-- ============================================================
-- 5. LOAD SCRIPT
-- ============================================================
if scriptURL then
    print(string.format("[%s] Game supported! UniverseId: %d", HUB_NAME, universeId))
    print(string.format("[%s] Loading script...", HUB_NAME))

    local ok, err = pcall(function()
        loadstring(game:HttpGet(scriptURL))()
    end)

    if not ok then
        warn(string.format("[%s] Gagal load script: %s", HUB_NAME, tostring(err)))
    end
else
    local msg = string.format(
        "\n[%s] Game belum didukung!\nPlaceId: %d\nUniverseId: %d!",
        HUB_NAME, placeId, universeId
    )
    warn(msg)
    print(msg)
end
