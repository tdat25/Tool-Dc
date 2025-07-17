
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
```
