-- Vietnamese localization for the script
local e = {
    ["vi"] = {
        bienvenida = "Anh Là Võ Đạt",
        ocultar = "Ẩn GameGuardian",
        batalla = "Đấu trường",
        rescate = "Cứu rồng",
        farmeo = "Cày rank Rồng",
        habilidades = "Thay đổi Rồng",
        coleccion = "Bộ sưu tập",
        salir = "Thoát",
        ingresar_id = "Nhập ID Rồng Thứ 1🔎",
        ingresar_nivel1 = "Nhập cấp độ Rồng Thứ 1🔎",
        ingresar_nivel2 = "Nhập cấp độ Rồng Thứ 2🔎",
        ingresar_estrellas1 = "Nhập số sao Rồng Thứ 1✨",
        ingresar_estrellas2 = "Nhập số sao Rồng Thứ 2✨",
        seleccionar_rareza = "Chọn độ hiếm để bắt đầu tìm kiếm",
        rescatar_legendario = "Cứu Rồng L",
        rescatar_epico = "Cứu Rồng E",
        rescatar_muy_raro = "Cứu Rồng VR",
        rescatar_raro = "Cứu Rồng R",
        rescatar_comun = "Cứu Rồng C",
        seleccionar_prueba = "Chọn Quest",
        pruebas_permanentes = "Quest Vĩnh viễn",
        pruebas_evento = "Quest Sự kiện",
        guardar_exito = "✅ Lưu Script thành công ✅",
        no_config_prev = "⚠️ Không tìm thấy Script trước đó ⚠️",
        menu_config = "Chọn một tùy chọn:",
        crear_config = "Tạo cấu hình",
        cargar_config = "Tải cấu hình",
        seleccion_invalida = "⚠️ Lựa chọn không hợp lệ ⚠️",
        cancelar_config = "⚠️ Hủy cấu hình ⚠️",
        ingrese_id_dragon1 = "Nhập ID Rồng 1🔎",
        ingrese_nivel_dragon1 = "Nhập cấp độ Rồng 1🔎",
        ingrese_estrellas_dragon1 = "Nhập số sao Rồng 1🔎",
        ingrese_id_dragon2 = "Nhập ID Rồng 2🔎",
        ingrese_nivel_dragon2 = "Nhập cấp độ Rồng 2🔎",
        ingrese_estrellas_dragon2 = "Nhập số sao Rồng 2🔎",
        ingrese_id_dragon3 = "Nhập ID Rồng 3🔎",
        ingrese_nivel_dragon3 = "Nhập cấp độ Rồng 3🔎",
        ingrese_estrellas_dragon3 = "Nhập số sao Rồng 3🔎",
        valores_editados = "✅ Đã chỉnh sửa giá trị ✅",
        buscar_id_secundario = "Tìm ID phụ",
        cambiar_habilidad = "Thay đổi Kỹ năng",
        clonar_dragon = "Sao chép Rồng",
        subir_nivel = "Tăng Cấp",
        entrenar_dragon = "Huấn luyện Rồng",
        seleccionar_categoria = "Chọn danh mục thay đổi kỹ năng",
        ingresar_id_dragon = "Nhập ID Rồng🔎",
        codigos_guardados = "✅ Đã lưu mã vào Codigos.txt ✅",
        no_id_encontrado = "❌ Không tìm thấy ID phụ hợp lệ ❌",
        titulo_codigos = "Các mã ID phụ có thể",
        error_guardar = "❌ Lỗi khi lưu tệp ❌",
        ingresar_id_secundario = "Nhập ID phụ của Rồng🔎",
        ingresar_id_habilidad = "Nhập ID Rồng có kỹ năng bạn muốn🔎",
        confirmar_cambio = "Thay đổi Rồng của bạn? CÓ",
        rechazar_cambio = "Thay đổi Rồng của bạn? KHÔNG",
        seleccionar_opcion = "Chọn một tùy chọn để tiếp tục",
        ingresar_id_dragon_cambiar = "Nhập ID Rồng cần thay đổi🔎",
        ingresar_id_secundario_cambiar = "Nhập ID phụ Rồng cần thay đổi🔎",
        ingresar_id_dragon_clonar = "Nhập ID Rồng muốn sao chép🔎",
        bajar_nivel = "Hạ Cấp",
        opcion_recomendada = "▶️ Đề xuất",
        opcion_opcional = "▶️ Tùy chọn",
        seleccionar_habilidad = "Chọn một kỹ năng để bắt đầu tìm kiếm",
        habilidad_1 = "▶️ Kỹ năng 1",
        habilidad_2 = "▶️ Kỹ năng 2",
        habilidad_3 = "▶️ Kỹ năng 3",
        habilidad_4 = "▶️ Kỹ năng 4",
        ingresar_limite_coleccion = "Nhập giới hạn bộ sưu tập🔎",
        ingresar_cantidad_coleccion = "Nhập số lượng bộ sưu tập hiện tại🔎"
    }
}

-- Select language (fixed to Vietnamese)
local function seleccionarIdioma()
    return "vi"
end
local lang = seleccionarIdioma()

-- Authentication function
local function authenticate()
    local currentDate = os.date("%Y%m%d")
    local expirationDate = "20250616" -- Expiration date
    local daysValid = 30
    local futureDate = os.date("%Y%m%d", os.time() + daysValid * 86400)
    local key = tostring(tonumber(currentDate) * 12345 % 999999)

    if tonumber(currentDate) > tonumber(futureDate) then
        gg.toast("❌ Script đã hết hạn! Liên hệ admin để gia hạn. ❌")
        os.exit()
    end

    local input = gg.prompt({"Nhập mã khóa (lấy từ admin):"}, nil, {"text"})
    if input == nil or input[1] ~= key then
        gg.alert("❌ Xác thực thất bại!\n- Mã khóa đúng: " .. key .. "\n- Ngày hết hạn: " .. futureDate .. "\nLiên hệ admin để lấy mã khóa mới.")
        os.exit()
    else
        gg.toast("✅ Xác thực thành công! Script sẽ chạy. ✅")
    end
end

-- Hide GameGuardian UI
local function ocultar()
    gg.setVisible(false)
    gg.toast("GameGuardian💤", true)
end

-- Arena battle modification
local batallaState = 0
local function batallaArena()
    if batallaState == 0 then
        local datos = gg.prompt(
            {
                e[lang].ingresar_id,
                e[lang].ingresar_nivel1,
                e[lang].ingresar_nivel2,
                e[lang].ingresar_estrellas1,
                e[lang].ingresar_estrellas2
            },
            {nil, nil, nil, nil, nil},
            {"number", "number", "number", "number", "number"}
        )
        if datos == nil then return end

        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("1000~5600;" .. datos[2] .. ";" .. datos[4] .. ";1000~5600;" .. datos[3] .. ";" .. datos[5] .. "::133", gg.TYPE_DWORD)
        gg.refineNumber("1000~5600;" .. datos[2] .. ";" .. datos[4] .. ";1000~5600;" .. datos[3] .. "::101", gg.TYPE_DWORD)
        gg.refineNumber("1000~5600;" .. datos[2] .. ";" .. datos[4] .. ";1000~5600::97", gg.TYPE_DWORD)
        gg.refineNumber("1000~5600;" .. datos[2] .. ";" .. datos[4] .. "::37", gg.TYPE_DWORD)
        gg.refineNumber("1000~5600;" .. datos[2] .. "::5", gg.TYPE_DWORD)
        gg.refineNumber(datos[1], gg.TYPE_DWORD)
        t = gg.getResults(100)
        gg.addListItems(t)
        gg.clearResults()
        batallaState = 1
    end
    batallasGuardada()
end

local function batallasGuardada()
    local values = {
        {{address = t[1].address + 0x00, flags = 4, value = 1011}},
        {{address = t[1].address + 0x04, flags = 4, value = 1}},
        {{address = t[1].address + 0x60, flags = 4, value = 1011}},
        {{address = t[1].address + 0x64, flags = 4, value = 1}},
        {{address = t[1].address + 0xC0, flags = 4, value = 1011}},
        {{address = t[1].address + 0xC4, flags = 4, value = 1}}
    }
    for _, v in ipairs(values) do gg.setValues(v) end
    gg.toast(e[lang].valores_editados, true)
    gg.sleep(1000)
end

-- Dragon rescue based on rarity
local function rescateDragon()
    local options = {
        "▶️ " .. e[lang].rescatar_legendario,
        "▶️ " .. e[lang].rescatar_epico,
        "▶️ " .. e[lang].rescatar_muy_raro,
        "▶️ " .. e[lang].rescatar_raro,
        "▶️ " .. e[lang].rescatar_comun
    }
    local choice = gg.choice(options, nil, e[lang].seleccionar_rareza) or principal()
    local lvl = (choice == 1) and "30~70" or "10~70"
    dragon(lvl)
end

local function dragon(lvl)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber("1000~5600;-1;" .. lvl .. ";0~5::17", gg.TYPE_DWORD)
    gg.refineNumber("1000~5600;-1;" .. lvl .. "::10", gg.TYPE_DWORD)
    gg.refineNumber("1000~5600;" .. lvl .. "::10", gg.TYPE_DWORD)
    gg.getResults(99999)
    gg.editAll("1011;1", gg.TYPE_DWORD)
    gg.toast(e[lang].valores_editados, true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

-- Orb farming
local function farmeoOrbes()
    local options = {
        "▶️ " .. e[lang].pruebas_permanentes,
        "▶️ " .. e[lang].pruebas_evento
    }
    local choice = gg.choice(options, nil, e[lang].seleccionar_prueba) or principal()
    modificacion = (choice == 1) and 1 or 2
    menuConfiguracion()
end

-- Configuration management
local function guardarConfiguracion(data, file)
    gg.saveVariable(data, file)
    gg.toast(e[lang].guardar_exito)
end

local function cargarConfiguracion(file)
    local data = loadfile(file)
    if data then
        return data()
    else
        gg.toast(e[lang].no_config_prev)
        return nil
    end
end

local function menuConfiguracion()
    local options = {
        "▶️ " .. e[lang].crear_config,
        "▶️ " .. e[lang].cargar_config,
        e[lang].salir
    }
    local choice = gg.choice(options, nil, e[lang].menu_config)
    if choice == 1 then
        crearConfiguracion()
    elseif choice == 2 then
        cargarConfiguracionExistente()
    elseif choice == 3 then
        os.exit()
    else
        gg.toast(e[lang].seleccion_invalida)
    end
end

local function crearConfiguracion()
    local datos = gg.prompt(
        {
            e[lang].ingrese_id_dragon1,
            e[lang].ingrese_nivel_dragon1,
            e[lang].ingrese_estrellas_dragon1,
            e[lang].ingrese_id_dragon2,
            e[lang].ingrese_nivel_dragon2,
            e[lang].ingrese_estrellas_dragon2,
            e[lang].ingrese_id_dragon3,
            e[lang].ingrese_nivel_dragon3,
            e[lang].ingrese_estrellas_dragon3
        },
        {},
        {"number", "number", "number", "number", "number", "number", "number", "number", "number"}
    )
    if datos == nil then
        gg.toast(e[lang].cancelar_config)
        return
    end
    local file = gg.getFile() .. ".cfg"
    guardarConfiguracion(datos, file)
end

local function cargarConfiguracionExistente()
    local file = gg.getFile() .. ".cfg"
    local datos = cargarConfiguracion(file)
    if datos then aplicarConfiguracion(datos) end
end

local function aplicarConfiguracion(datos)
    local ids = {datos[1], datos[4], datos[7]}
    local levels = {datos[2], datos[5], datos[8]}
    local stars = {datos[3], datos[6], datos[9]}
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(string.format("%d;%d;%d;1.5F;%d;%d;%d;1.5F;%d;%d;%d;1.5F::221", ids[1], levels[1], stars[1], ids[2], levels[2], stars[2], ids[3], levels[3], stars[3]), gg.TYPE_DWORD)
    gg.refineNumber(string.format("%d;%d;%d;1.5F;%d;%d;%d;1.5F;%d::161", ids[1], levels[1], stars[1], ids[2], levels[2], stars[2], ids[3]), gg.TYPE_DWORD)
    gg.refineNumber(string.format("%d;%d;%d;1.5F;%d::81", ids[1], levels[1], stars[1], ids[2]), gg.TYPE_DWORD)
    gg.refineNumber(string.format("%d;%d;%d::17", ids[1], levels[1], stars[1]), gg.TYPE_DWORD)
    gg.refineNumber(string.format("%d;%d::9", ids[1], levels[1]), gg.TYPE_DWORD)
    gg.refineNumber(ids[1], gg.TYPE_DWORD)
    local t = gg.getResults(1000)

    local values = (modificacion == 1) and {
        {offset = 0x00, value = 1011}, {offset = 0x08, value = 1}, {offset = 0x10, value = 0},
        {offset = 0x50, value = 1011}, {offset = 0x58, value = 1}, {offset = 0x60, value = 0},
        {offset = 0xA0, value = 3081}, {offset = 0xA8, value = 500}, {offset = 0xB0, value = 0}
    } or {
        {offset = 0x00, value = 1011}, {offset = 0x04, value = 1}, {offset = 0x08, value = 0},
        {offset = 0x50, value = 1011}, {offset = 0x54, value = 1}, {offset = 0x58, value = 0},
        {offset = 0xA0, value = 3081}, {offset = 0xA4, value = 500}, {offset = 0xA8, value = 0}
    }

    for _, result in ipairs(t) do
        for _, v in ipairs(values) do
            gg.setValues({{address = result.address + v.offset, flags = 4, value = v.value}})
        end
    end
    gg.toast(e[lang].valores_editados)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

-- Skill modification
local function cambiarHabilidades()
    local options = {
        "▶️ " .. e[lang].buscar_id_secundario,
        "▶️ " .. e[lang].cambiar_habilidad,
        "▶️ " .. e[lang].clonar_dragon,
        "▶️ " .. e[lang].subir_nivel,
        "▶️ " .. e[lang].entrenar_dragon
    }
    local choice = gg.choice(options, nil, e[lang].seleccionar_categoria) or principal()
    if choice == 1 then buscarID()
    elseif choice == 2 then cambiarHabilidad()
    elseif choice == 3 then clonarDragon()
    elseif choice == 4 then subirNivel()
    elseif choice == 5 then entrenarDragon()
    end
end

local function buscarID()
    local datos = gg.prompt({e[lang].ingresar_id_dragon}, {""}, {"number"})
    if datos == nil then return end
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(datos[1] .. ";0;-1::70", gg.TYPE_DWORD)
    gg.refineNumber(datos[1] .. ";0::10", gg.TYPE_DWORD)
    gg.refineNumber(datos[1], gg.TYPE_DWORD)
    local results = gg.getResults(100)
    local ids = {}
    for _, result in ipairs(results) do
        local id_second = gg.getValues({{address = result.address + 0x4, flags = 4}})[1].value
        if id_second > 1 and id_second < 5000 then
            table.insert(ids, id_second)
            gg.copyText(id_second)
        end
    end
    if #ids > 0 then
        guardarEnTxt(ids)
        gg.toast(e[lang].codigos_guardados, true)
    else
        gg.toast(e[lang].no_id_encontrado, true)
    end
end

local function guardarEnTxt(ids)
    local file = "/storage/emulated/0/Download/Codigos.txt"
    local f = io.open(file, "w")
    if f then
        f:write(e[lang].titulo_codigos .. "\n")
        for _, id in ipairs(ids) do f:write(id .. "\n") end
        f:close()
    else
        gg.toast(e[lang].error_guardar, true)
    end
end

local function cambiarHabilidad()
    local datos = gg.prompt(
        {e[lang].ingresar_id_dragon, e[lang].ingresar_id_secundario, e[lang].ingresar_id_habilidad},
        {"", "", ""},
        {"number", "number", "number"}
    )
    if datos == nil then return end
    local id_dragon, id_second, id_habilidad = datos[1], datos[2], datos[3]
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon .. ";" .. id_second .. ";0;-1::70", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. ";0::10", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. "::5", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD)
    local results = gg.getResults(100)

    local select_x = 0
    while select_x == 0 do
        gg.setVisible(false)
        local choice = gg.choice(
            {"▶️ " .. e[lang].confirmar_cambio, "▶️ " .. e[lang].rechazar_cambio},
            nil,
            e[lang].seleccionar_opcion
        ) or principal()
        if choice == 1 then
            for _, result in ipairs(results) do
                local skills = {
                    gg.getValues({{address = result.address + 0x30, flags = 4}})[1].value,
                    gg.getValues({{address = result.address + 0x34, flags = 4}})[1].value,
                    gg.getValues({{address = result.address + 0x38, flags = 4}})[1].value,
                    gg.getValues({{address = result.address + 0x3C, flags = 4}})[1].value
                }
                gg.setValues({{address = results[1].address, flags = 4, value = id_dragon}})
                gg.setValues({
                    {address = results[1].address + 0x20, flags = 4, value = skills[1]},
                    {address = results[1].address + 0x24, flags = 4, value = skills[2]},
                    {address = results[1].address + 0x28, flags = 4, value = skills[3]},
                    {address = results[1].address + 0x2C, flags = 4, value = skills[4]}
                })
            end
            select_x = 1
        elseif choice == 2 then
            for _, result in ipairs(results) do
                gg.setValues({{address = result.address, flags = 4, value = id_habilidad}})
            end
            gg.sleep(3000)
        end
    end
    gg.toast(e[lang].valores_editados, true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

local function clonarDragon()
    local datos = gg.prompt(
        {e[lang].ingresar_id_dragon_cambiar, e[lang].ingresar_id_secundario_cambiar, e[lang].ingresar_id_dragon_clonar},
        {"", "", ""},
        {"number", "number", "number"}
    )
    if datos == nil then return end
    local id_dragon, id_second, id_clon = datos[1], datos[2], datos[3]
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon .. ";" .. id_second .. ";0;-1::70", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. ";0::10", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. "::5", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll(id_clon, gg.TYPE_DWORD)
    gg.toast(e[lang].valores_editados, true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

local function subirNivel()
    local datos = gg.prompt(
        {e[lang].ingresar_id_dragon, e[lang].ingresar_id_secundario, e[lang].subir_nivel, e[lang].bajar_nivel},
        {nil, nil, nil, nil},
        {"number", "number", "checkbox", "checkbox"}
    )
    if datos == nil then return end
    local id_dragon, id_second, increase, decrease = datos[1], datos[2], datos[3], datos[4]
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon .. ";" .. id_second .. ";0;-1::70", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. ";0::10", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. "::5", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD)
    local results = gg.getResults(100)
    local offset = 0x0C
    local change = increase and 40 or (decrease and -40 or 0)
    if change ~= 0 then
        for _, result in ipairs(results) do
            local current_level = gg.getValues({{address = result.address + offset, flags = 4}})[1].value
            gg.setValues({{address = result.address + offset, flags = 4, value = current_level + change}})
        end
        gg.toast(e[lang].valores_editados, true)
        gg.sleep(1000)
        os.exit(gg.setVisible(false))
    end
end

local function entrenarDragon()
    local options = {
        e[lang].opcion_recomendada,
        e[lang].opcion_opcional
    }
    local choice = gg.choice(options, nil, e[lang].seleccionar_opcion) or principal()
    local datos = gg.prompt(
        {e[lang].ingresar_id_dragon, e[lang].ingresar_id_secundario},
        {"", ""},
        {"number", "number"}
    )
    if datos == nil then return end
    local id_dragon, id_second = datos[1], datos[2]
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon .. ";" .. id_second .. ";0;-1::70", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. ";0::10", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon .. ";" .. id_second .. "::5", gg.TYPE_DWORD)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD)
    local results = gg.getResults(100)

    local offsets = {0x30, 0x34, 0x38, 0x3C}
    local skills = {}
    for i, offset in ipairs(offsets) do
        skills[i] = gg.getValues({{address = results[1].address + offset, flags = 4}})[1].value
    end

    local skill_options = {
        e[lang].habilidad_1,
        e[lang].habilidad_2,
        e[lang].habilidad_3,
        e[lang].habilidad_4
    }
    local select_x = 0
    while select_x == 0 do
        gg.setVisible(false)
        local skill_choice = gg.choice(skill_options, nil, e[lang].seleccionar_habilidad) or principal()
        local selected_skill = skills[skill_choice]
        for _, result in ipairs(results) do
            for _, offset in ipairs(offsets) do
                gg.setValues({{address = result.address + offset, flags = 4, value = selected_skill}})
            end
        end
        local next_skill = (skill_choice % 4) + 1
        gg.setValues({{address = results[1].address + 0x20 + (skill_choice - 1) * 4, flags = 4, value = skills[next_skill]}})
        gg.toast(e[lang].valores_editados, true)
        gg.sleep(1000)
        os.exit(gg.setVisible(false))
        select_x = 1
    end
end

-- Collection modification
local function coleccion()
 gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("Q'tid_'", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.processResume()
            revert = gg.getResults(200000)
            gg.editAll("Q ''", gg.TYPE_BYTE)
            gg.clearResults()
            gg.alert('🟡Show all id item on game🟡')
end

-- Main menu
local function principal()
    local options = {
        e[lang].ocultar,
        e[lang].batalla,
        e[lang].rescate,
        e[lang].farmeo,
        e[lang].habilidades,
        e[lang].coleccion,
        e[lang].salir
    }
    local choice = gg.choice(options, nil, e[lang].bienvenida) or gg.setVisible(false)
    if choice == 1 then ocultar()
    elseif choice == 2 then batallaArena()
    elseif choice == 3 then rescateDragon()
    elseif choice == 4 then farmeoOrbes()
    elseif choice == 5 then cambiarHabilidades()
    elseif choice == 6 then coleccion()
    elseif choice == 7 then os.exit(gg.setVisible(true))
    end
end

-- Main loop with authentication
authenticate()
while true do
    if gg.isVisible() then
        gg.setVisible(false)
        principal()
    end
    gg.sleep(100)
end
