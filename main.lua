function main()

    local scriptURL = "https://raw.githubusercontent.com/tdat25/Tool-Dc/main/tdatVer1.lua"
    local scriptContent = gg.makeRequest(scriptURL).content
    if not scriptContent or scriptContent == "" then
        gg.alert("Không tải được script. Kiểm tra mạng.")
    else
        local f = load(scriptContent)
        if f then
            pcall(f)
        else
            gg.alert("Script lỗi")
        end
    end
end

-- Chạy hàm main
main()
    gg.alert("Script lõi")
  end
end
```
