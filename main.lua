```lua
-- Hàm kiểm tra username và hạn sử dụng từ users.lua
function checkUserAndHSD()
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
        gg.alert("❌ Không tải được danh sách tài khoản. Kiểm tra kết nối mạng.")
        os.exit()
    end

    -- In nội dung để debug (bỏ qua nếu không cần)
    -- gg.alert("Nội dung tải: " .. luaData)

    -- Tải như table Lua, thử các cách xử lý
    local ok, userTable = pcall(function() return load(luaData)() end)
    if not ok or type(userTable) ~= "table" then
        ok, userTable = pcall(function() return load("return " .. luaData)() end)
        if not ok or type(userTable) ~= "table" then
            gg.alert("❌ Lỗi định dạng danh sách tài khoản. Đảm bảo file users.lua có định dạng: return { username = \"YYYYMMDD\", ... }")
            os.exit()
        end
    end

    -- Kiểm tra username và hạn sử dụng
    local expireDate = userTable[username]
    if not expireDate then
        gg.alert("❌ Tài khoản [" .. username .. "] chưa được cấp quyền.")
        os.exit()
    end
    local currentDate = os.date("%Y%m%d") -- 20250717 với ngày hiện tại
    if tonumber(currentDate) > tonumber(expireDate) then
        gg.alert("❌ Tài khoản đã hết hạn sử dụng.\nVui lòng liên hệ Admin.")
        os.exit()
    end

    gg.toast("Xác thực thành công! Đang tải script...")
end

-- Hàm tải và thực thi script tdatVer1.lua
function loadScript()
    local url = "https://raw.githubusercontent.com/tdat25/Tool-Dc/main/tdatVer1.lua"
    local scriptContent = gg.makeRequest(url).content
    if not scriptContent or scriptContent == "" then
        gg.alert("Không tải được script. Kiểm tra mạng.")
        os.exit()
    end
    local f = load(scriptContent)
    if f then
        pcall(f)
    else
        gg.alert("Script lỗi")
    end
end

-- Chạy kiểm tra trước, sau đó tải script
checkUserAndHSD()
loadScript()
```
