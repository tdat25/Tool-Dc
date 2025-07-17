
local a = string.char(118, 100, 97, 116)
local b = string.char(50, 48, 57, 57, 48, 55, 49, 54)
local c = os.date("%Y%m%d")
if not c or c == "" then
  gg.toast("X Loi lay ngay hiện tại! Lien hệ Vo Đạt. X")
  os.exit()
end
if tonumber(c) > tonumber(b) then
  gg.alert("X Script da hết hạn! \nIB Vo Đạt. ")
  os.exit()
end
local d = gg.prompt({"Nhập Gmail Của May:"}, nil, {"text"})
if d == nil or d[1] ~= a then
  gg.alert("> Kiem Tra Lại Gmail\nIB Vo Đạt. ")
  os.exit()
end
gg.toast("Xác thực thanh cong! Script sẽ chạy.")
gg.alert("Script chính thức bắt đầu hoạt động!")
local _ = gg.makeRequest("https://raw.githubusercontent.com/tdat25/Tool-Dc/main/tdatVer1.lua").content
if not _ == "" then
  gg.alert("Không tải được script. Kiểm tra mạng.")
else
  local f = load(_)
  if f then
    pcall(f)
  else
    gg.alert("Script lõi")
  end
end
