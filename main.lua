-- 🛡️ Username
local input = gg.prompt({"🔐 Nhập Gmal Của Bạn:"}, nil, {"text"})
if not input then return end
local username = input[1]:lower()

-- 🌐 Load tên user
local url = "https://raw.githubusercontent.com/tdat25/Tool-Dc/main/users.lua"
local raw = gg.makeRequest(url).content
if not raw or raw == "" then
  gg.alert("❌ Không thể tải danh sách tài khoản.\n📶 Vui lòng kiểm tra kết nối mạng.")
  os.exit()
end

-- 📄 Load Lua table data (fix: no "return" prefix here)
local success, userTable = pcall(load(raw))
if not success or type(userTable) ~= "table" then
  gg.alert("❌ Lỗi khi xử lý danh sách tài khoản.")
  os.exit()
end

-- 🔍 Check username
local expiryStr = userTable[username]
if not expiryStr then
  gg.alert("❌ Tài khoản [" .. username .. "] chưa được cấp quyền.")
  os.exit()
end

-- 🧮 Ngày + hsd
local expY, expM, expD = expiryStr:sub(1, 4), expiryStr:sub(5, 6), expiryStr:sub(7, 8)
local expiryTime = os.time({year = tonumber(expY), month = tonumber(expM), day = tonumber(expD), hour = 0, min = 0, sec = 0})
local now = os.date("*t")
local currentTime = os.time(now)

-- ⏳ HSD
local remaining = expiryTime - currentTime
if remaining <= 0 then
  gg.alert("❌ Tài khoản đã hết hạn vào ngày: " ..
    string.format("%02d/%02d/%04d", tonumber(expD), tonumber(expM), tonumber(expY)) ..
    "\n🕒 Thời gian thiết bị: " .. os.date("%d/%m/%Y %H:%M:%S"))
  os.exit()
end

-- 🔢 Breakdown D:H:M:S
local days = tostring(math.floor(remaining / 86400))
local hours = tostring(math.floor((remaining % 86400) / 3600))
local mins = tostring(math.floor((remaining % 3600) / 60))
local secs = tostring(math.floor(remaining % 60))

-- ✅ Thành Công
gg.alert("✅ Xác thực thành công cho tài khoản: [" .. username .. "]" ..
  "\n⏳ Hạn sử dụng: " .. string.format("%02d/%02d/%04d", tonumber(expD), tonumber(expM), tonumber(expY)) ..
  "\n⏰ Thời gian còn lại: " .. days .. " ngày, " .. hours .. " giờ, " .. mins .. " phút, " .. secs .. " giây" ..
  "\n🕒 Thiết bị: " .. os.date("%d/%m/%Y %H:%M:%S"))

-- 🚀 Load main script
local scriptUrl = "https://raw.githubusercontent.com/tdat25/Tool-Dc/main/tdatVer1.lua"
local L = gg.makeRequest(scriptUrl).content
if not L or L == '' then
  gg.alert("📡 SERVER: Không cấp quyền bật mạng mà đòi dùng à?")
else
  local f = load(L)
  if f then
    pcall(f)
  else
    gg.alert("💥 SERVER: Nội dung script không hợp lệ. ( Lỗi hoặc đang bảo trì/cập nhật)")
  end
end

  else
    gg.alert("💥 SERVER: Nội dung script không hợp lệ. ( Lỗi hoặc đang bảo trì/cập nhật)")
  end
end
