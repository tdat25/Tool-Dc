function MoveHabitatAll()
    local values = {
        [1] = "1065353216", -- 1x1
        [2] = "1073741824", -- 2x2
        [3] = "1077936128", -- 3x3
        [4] = "1082130432", -- 4x4
        [5] = "1084227584", -- 5x5
        [6] = "1086324736"  -- 6x6
    }

    for i = 1, 6 do
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("-300~300F;"..values[i]..";"..values[i].."::9", gg.TYPE_DWORD)
        gg.refineNumber(values[i], gg.TYPE_DWORD)
        local results = gg.getResults(5000)
        if #results > 0 then
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            gg.toast("✅ Dọn Nhà Được Rồi Đó")
        else
            gg.toast("⚠️ Game Fix rồi")
        end
    end
end

function mainMenu()
    local choice = gg.choice({
        "📦 MoveHabitat "
    }, nil, "👑 Admin: Võ Đạt")
    if choice == 1 then
        gg.alert("👑 Admin: Võ Đạt")
        MoveHabitatAll()
    end
end

mainMenu()
