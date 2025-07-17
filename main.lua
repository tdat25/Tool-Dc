```lua
function main()
    -- Kiểm tra ngày hiện tại và hạn sử dụng cố định
    local a = string.char(118, 100, 97, 116) -- "vdat"
    local b = string.char(50, 48, 57, 57, 48, 55, 49, 54) -- "20990716"
    local c = os.date("%Y%m%d")
    if not c or c == "" then
        gg.toast("X Loi lay ngay hiện tại! Lien hệ Vo Đạt. X")
        os.exit()
    end
    if tonumber(c) > tonumber(b) then
        gg.alert("X Script da hết hạn! \nIB Vo Đạt. ")
        os.exit()
    end

    -- Nhập Gmail (username)
    local d = gg.prompt({"Nhập Gmail Của May:"}, nil, {"text"})
    if d == nil or d[1] == "" then
        gg.alert("> Kiem Tra Lại Gmail\nIB Vo Đạt. ")
        os.exit()
    end
    local username = d[1]:lower()

    -- Tải danh sách người dùng từ GitHub
    local url = "https://raw.githubusercontent.com/tdat25/Tool-Dc/main/users.lua"
    local luaData = gg.makeRequest(url).content
    if not luaData or luaData == "" then
        gg.alert("❌ Không tải được danh sách tài khoản.")
        os.exit()
    end

    -- Tải như table Lua
    local ok, userTable = pcall(load("return " .. luaData))
    if not ok or type(userTable) ~= "table" then
        gg.alert("❌ Lỗi định dạng danh sách tài khoản.")
        os.exit()
    end

    local expireDate = userTable[username]
    if not expireDate then
        gg.alert("❌ Tài khoản [" .. username .. "] chưa được cấp quyền.")
        os.exit()
    end
    if tonumber(c) > tonumber(expireDate) then
        gg.alert("❌ Tài khoản đã hết hạn sử dụng.\nVui lòng liên hệ Admin.")
        os.exit()
    end

    -- Xác thực thành công và tải script
    gg.toast("Xác thực thành cong! Script sẽ chạy.")
    gg.alert("Script chính thức bắt đầu hoạt động!")
    local scriptURL = "https://raw.githubusercontent.com/tdat25/Tool-Dc/main/tdatVer1.lua"
    local scriptContent = gg.makeRequest(scriptURL).content
    if scriptContent == "" then
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
```
