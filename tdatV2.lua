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
            gg.toast("✅ Moved "..i.."x"..i)
        else
            gg.toast("⚠️ Không tìm thấy vùng "..i.."x"..i)
        end
    end
end

function mainMenu()
    local choice = gg.choice({
        "📦 MoveHabitat All (1x1 → 6x6)"
    }, nil, "📌 Chọn chức năng:")
    if choice == 1 then
        MoveHabitatAll()
    end
end

mainMenu()
