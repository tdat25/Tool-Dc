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
        gg.alert("❌ Không tải được danh sách tài khoản.")
        os.exit()
    end

    -- Debug: Hiển thị nội dung tải về
    gg.alert("Nội dung tải từ users.lua: " .. luaData)

    -- Tải như table Lua, thử load trực tiếp trước
    local ok, userTable = pcall(load(luaData))
    if not ok or type(userTable) ~= "table" then
        -- Nếu thất bại, thử thêm "return"
        ok, userTable = pcall(load("return " .. luaData))
        if not ok or type(userTable) ~= "table" then
            gg.alert("❌ Lỗi định dạng danh sách tài khoản. Đảm bảo file users.lua khớp với: return { vdat = \"20191231\", dragon123 = \"20250801\", admin_test = \"20990101\" }")
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

checkUserAndHSD()
-- Chạy hàm tải script
loadScript()
```
