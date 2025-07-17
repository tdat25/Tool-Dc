function MoveHabitat()
    local configFile = gg.EXT_CACHE_DIR .. "/Move.text"
    local savedData = loadfile(configFile)
    if savedData ~= nil then
        savedData = savedData()
    end
    local menuMove = gg.prompt({
        '🌎 1x1 to all',
        '🌎 2x2 to all',
        '🌎 3x3 to all',
        '🌎 4x4 to all',
        '🌎 5x5 to all',
        '🌎 6x6 to all',
        '❌ Back to main menu'
    }, savedData, {'checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
    if menuMove == nil then return end
    gg.saveVariable(menuMove, configFile)
    local values = {
        [1] = "1065353216",
        [2] = "1073741824",
        [3] = "1077936128",
        [4] = "1082130432",
        [5] = "1084227584",
        [6] = "1086324736"
    }
    for i = 1, 6 do
        if menuMove[i] then
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("-300~300F;"..values[i]..";"..values[i].."::9", gg.TYPE_DWORD)
            gg.refineNumber(values[i], gg.TYPE_DWORD)
            local results = gg.getResults(5000)
            if #results > 0 then
                gg.editAll("0", gg.TYPE_DWORD)
                gg.clearResults()
                gg.toast("✅ Moved "..i.."x"..i)
            else
                gg.toast("⚠️ Không tìm thấy vùng "..i.."x"..i)
            end
        end
    end
    if menuMove[7] then
        mainMenu()
    end
end
function mainMenu()
    local choice = gg.choice({
        "📦 MoveHabitat"
    }, nil, "📌 Choose a function:")
    if choice == 1 then
        MoveHabitat()
    end
end
mainMenu()
