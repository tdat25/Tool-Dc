-- Hàm kiểm tra username và hạn sử dụng từ users.lua
function checkUserAndHSD()
    -- Nhập Gmail (username)
    local input = gg.prompt({"Nhập Gmail Của Màyy:"}, nil, {"text"})
    if input == nil or input[1] == nil or input[1]:gsub("%s+", "") == "" then
        gg.alert("❌ Vui lòng nhập Gmail hợp lệ.\nLiên hệ Admin (Đạt) nếu gặp sự cố.")
        os.exit()
    end
    local username = input[1]:lower():gsub("%s+", "") -- loại bỏ khoảng trắng và chuyển lowercase

    -- Tải danh sách người dùng từ GitHub
    local url = "https://raw.githubusercontent.com/tdat25/Tool-Dc/main/users.lua"
    local response = gg.makeRequest(url)
    local luaData = response and response.content

    if not luaData or luaData == "" then
        gg.alert("❌ Không tải được danh sách tài khoản từ GitHub.")
        os.exit()
    end

    -- Parse dữ liệu Lua thành table
local f = loadstring("return " .. luaData)
if not f then
    gg.alert("❌ Không thể xử lý dữ liệu Lua từ máy chủ.")
    os.exit()
end

local success, userTable = pcall(f)
if not success or type(userTable) ~= "table" then
    gg.alert("❌ Dữ liệu không hợp lệ.")
    os.exit()
end

    -- Kiểm tra username có tồn tại không
    local expireDate = userTable[username]
    if not expireDate then
        gg.alert("❌ Tài khoản [" .. username .. "] chưa được cấp quyền sử dụng.")
        os.exit()
    end

    -- Kiểm tra hạn sử dụng
    local currentDate = os.date("%Y%m%d")
    if tonumber(currentDate) > tonumber(expireDate) then
        gg.alert("❌ Tài khoản đã hết hạn sử dụng.\nVui lòng liên hệ Admin để gia hạn.")
        os.exit()
    end

    -- Hiển thị thông báo thành công và hạn sử dụng
    local function formatDate(dateStr)
        return dateStr:sub(7,8) .. "/" .. dateStr:sub(5,6) .. "/" .. dateStr:sub(1,4)
    end

    gg.toast("✅ Xác thực thành công! HSD: " .. formatDate(expireDate))
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
