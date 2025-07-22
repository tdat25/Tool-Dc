local idiomas = {
    ["vi"] = {
        bienvenida = "Anh Là Võ Đạt",
        ocultar = "Ẩn GameGuardian ",
        batalla = "Đấu trường",
        rescate = "Cứu rồng",
        farmeo = "Farm orbs",
        habilidades = "Thay đổi kỹ năng",
        coleccion = " Bộ sưu tập ",
        salir = " Thoát ",
        ingresar_id = "Nhập ID Rồng 1🔎",
        ingresar_nivel1 = "Nhập cấp độ Rồng 1🔎",
        ingresar_nivel2 = "Nhập cấp độ Rồng 2🔎",
        ingresar_estrellas1 = "Nhập số sao Rồng 1✨",
        ingresar_estrellas2 = "Nhập số sao Rồng 2✨",
        seleccionar_rareza = "Chọn độ hiếm để bắt đầu tìm kiếm",
        rescatar_legendario = "Cứu Rồng L",
        rescatar_epico = "Cứu Rồng E",
        rescatar_muy_raro = "Cứu Rồng VR",
        rescatar_raro = "Cứu Rồng R",
        rescatar_comun = "Cứu Rồng C",
        seleccionar_prueba = "Chọn thử thách rồng",
        pruebas_permanentes = "Thử thách Vĩnh viễn",
        pruebas_evento = "Thử thách Sự kiện",
        guardar_exito = "✅ Lưu cấu hình thành công ✅",
        no_config_prev = "⚠️ Không tìm thấy cấu hình trước đó ⚠️",
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

function seleccionarIdioma()
    return "vi" -- Chỉ sử dụng Tiếng Việt
end

local idioma = seleccionarIdioma()

function principal()
    menuPrincipal = gg.choice({
        idiomas[idioma].ocultar,
        idiomas[idioma].batalla,
        idiomas[idioma].rescate,
        idiomas[idioma].farmeo,
        idiomas[idioma].habilidades,
        idiomas[idioma].coleccion,
        idiomas[idioma].salir
    }, nil, idiomas[idioma].bienvenida) or gg.setVisible(false)

    if menuPrincipal == 1 then Ocultar() end
    if menuPrincipal == 2 then batallaArena() end
    if menuPrincipal == 3 then rescateDragon() end
    if menuPrincipal == 4 then farmeoOrbes() end
    if menuPrincipal == 5 then cambiarHabilidades() end
    if menuPrincipal == 6 then Code() end
    if menuPrincipal == 7 then os.exit(gg.setVisible(true)) end
end

function Ocultar()
    gg.setVisible(false)
    gg.toast("GameGuardian💤", true)
end

batalla = 0
function batallaArena()
    if batalla == 0 then
        datos = gg.prompt({
            idiomas[idioma].ingresar_id,
            idiomas[idioma].ingresar_nivel1,
            idiomas[idioma].ingresar_nivel2,
            idiomas[idioma].ingresar_estrellas1,
            idiomas[idioma].ingresar_estrellas2
        }, {nil, nil, nil, nil, nil}, {"number", "number", "number", "number", "number"})
        if datos == nil then return end
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("1000~5600;"..datos[2]..";"..datos[4]..";1000~5600;"..datos[3]..";"..datos[5].."::133", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("1000~5600;"..datos[2]..";"..datos[4]..";1000~5600;"..datos[3].."::101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("1000~5600;"..datos[2]..";"..datos[4]..";1000~5600::97", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("1000~5600;"..datos[2]..";"..datos[4].."::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("1000~5600;"..datos[2].."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(datos[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.addListItems(t)
        gg.clearResults()
        batalla = 1
        batallasGuardada()
    elseif batalla == 1 then
        batallasGuardada()
    end
end

function batallasGuardada()
    gg.setValues({{address=t[1].address+0x00 , flags=4, value=1011}})  
    gg.setValues({{address=t[1].address+0x04 , flags=4, value=1}})     
    gg.setValues({{address=t[1].address+0x60 , flags=4, value=1011}})  
    gg.setValues({{address=t[1].address+0x64 , flags=4, value=1}})     
    gg.setValues({{address=t[1].address+0xC0 , flags=4, value=1011}})  
    gg.setValues({{address=t[1].address+0xC4 , flags=4, value=1}})        
    gg.toast(idiomas[idioma].valores_editados, true)
    gg.sleep(1000)          
end

function rescateDragon()
    menurescateDragon = gg.choice({
        "▶️ " .. idiomas[idioma].rescatar_legendario,
        "▶️ " .. idiomas[idioma].rescatar_epico,
        "▶️ " .. idiomas[idioma].rescatar_muy_raro,
        "▶️ " .. idiomas[idioma].rescatar_raro,
        "▶️ " .. idiomas[idioma].rescatar_comun
    }, nil, idiomas[idioma].seleccionar_rareza) or principal()
    if menurescateDragon == 1 then lvl = "30~70" dragon() end
    if menurescateDragon == 2 then lvl = "10~70" dragon() end
    if menurescateDragon == 3 then lvl = "10~70" dragon() end
    if menurescateDragon == 4 then lvl = "10~70" dragon() end
    if menurescateDragon == 5 then lvl = "10~70" dragon() end
end

function dragon()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber("1000~5600;-1;"..lvl..";0~5::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000~5600;-1;"..lvl.."::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000~5600;"..lvl.."::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(99999)
    gg.editAll("1011;1", gg.TYPE_DWORD)
    gg.toast(idiomas[idioma].valores_editados, true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function farmeoOrbes()
    menufarmeoOrbes = gg.choice({
        "▶️ " .. idiomas[idioma].pruebas_permanentes,
        "▶️ " .. idiomas[idioma].pruebas_evento
    }, nil, idiomas[idioma].seleccionar_prueba) or principal()
    
    if menufarmeoOrbes == 1 then 
        modificacion = 1 
        menuConfiguracion() 
    end
    if menufarmeoOrbes == 2 then 
        modificacion = 2 
        menuConfiguracion() 
    end
end

function guardarConfiguracion(configuracion, nombreArchivo)
    gg.saveVariable(configuracion, nombreArchivo)
    gg.toast(idiomas[idioma].guardar_exito)
end

function cargarConfiguracion(nombreArchivo)
    local datos = loadfile(nombreArchivo)
    if datos ~= nil then
        return datos()
    else
        gg.toast(idiomas[idioma].no_config_prev)
        return nil
    end
end

function menuConfiguracion()
    local opciones = {
        "▶️ " .. idiomas[idioma].crear_config,
        "▶️ " .. idiomas[idioma].cargar_config,
        idiomas[idioma].salir
    }
    local eleccion = gg.choice(opciones, nil, idiomas[idioma].menu_config)
    
    if eleccion == 1 then
        crearConfiguracion()
    elseif eleccion == 2 then
        cargarConfiguracionExistente()
    elseif eleccion == 3 then
        os.exit()
    else
        gg.toast(idiomas[idioma].seleccion_invalida)
    end
end

function crearConfiguracion()
    local configuracion = gg.prompt(
        {
            idiomas[idioma].ingrese_id_dragon1,
            idiomas[idioma].ingrese_nivel_dragon1,
            idiomas[idioma].ingrese_estrellas_dragon1,
            idiomas[idioma].ingrese_id_dragon2,
            idiomas[idioma].ingrese_nivel_dragon2,
            idiomas[idioma].ingrese_estrellas_dragon2,
            idiomas[idioma].ingrese_id_dragon3,
            idiomas[idioma].ingrese_nivel_dragon3,
            idiomas[idioma].ingrese_estrellas_dragon3
        },
        {},
        {
            "number", "number", "number",
            "number", "number", "number",
            "number", "number", "number"
        }
    )
    
    if configuracion == nil then
        gg.toast(idiomas[idioma].cancelar_config)
        return
    end
    local nombreArchivo = gg.getFile() .. ".cfg"
    guardarConfiguracion(configuracion, nombreArchivo)
end

function cargarConfiguracionExistente()
    local nombreArchivo = gg.getFile() .. ".cfg"
    local configuracion = cargarConfiguracion(nombreArchivo)
    if configuracion ~= nil then
        aplicarConfiguracion(configuracion)
    end
end

function aplicarConfiguracion(configuracion)
    local id = {configuracion[1], configuracion[4], configuracion[7]}
    local nivel = {configuracion[2], configuracion[5], configuracion[8]}
    local estrellas = {configuracion[3], configuracion[6], configuracion[9]}
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(
        string.format(
            '%d;%d;%d;1.5F;%d;%d;%d;1.5F;%d;%d;%d;1.5F::221',
            id[1], nivel[1], estrellas[1],
            id[2], nivel[2], estrellas[2],
            id[3], nivel[3], estrellas[3]
        ),
        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0
    )
    gg.refineNumber(
        string.format(
            '%d;%d;%d;1.5F;%d;%d;%d;1.5F;%d::161',
            id[1], nivel[1], estrellas[1],
            id[2], nivel[2], estrellas[2],
            id[3]
        ),
        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0
    )
    gg.refineNumber(
        string.format(
            '%d;%d;%d;1.5F;%d::81',
            id[1], nivel[1], estrellas[1],
            id[2]
        ),
        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0
    )
    gg.refineNumber(
        string.format(
            '%d;%d;%d::17',
            id[1], nivel[1], estrellas[1]
        ),
        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0
    )
    gg.refineNumber(
        string.format(
            '%d;%d::9',
            id[1], nivel[1]
        ),
        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0
    )
    gg.refineNumber(
        string.format(
            '%d',
            id[1]
        ),
        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0
    )
    local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
    if modificacion == 1 then
        for i, v in ipairs(t) do
            gg.setValues({{address=t[i].address+0 , flags=4, value=1011}})
            gg.setValues({{address=t[i].address+0x8 , flags=4, value=1}})
            gg.setValues({{address=t[i].address+0x10 , flags=4, value=0}})
            gg.setValues({{address=t[i].address+0x50 , flags=4, value=1011}})
            gg.setValues({{address=t[i].address+0x58 , flags=4, value=1}})
            gg.setValues({{address=t[i].address+0x60 , flags=4, value=0}})
            gg.setValues({{address=t[i].address+0xA0 , flags=4, value=3081}})
            gg.setValues({{address=t[i].address+0xA8 , flags=4, value=500}})
            gg.setValues({{address=t[i].address+0xB0 , flags=4, value=0}})
        end
    elseif modificacion == 2 then
        for i, v in ipairs(t) do
            gg.setValues({{address=t[i].address+0 , flags=4, value=1011}})
            gg.setValues({{address=t[i].address+0x04 , flags=4, value=1}})    
            gg.setValues({{address=t[i].address+0x08 , flags=4, value=0}})   
            gg.setValues({{address=t[i].address+0x50 , flags=4, value=1011}}) 
            gg.setValues({{address=t[i].address+0x54 , flags=4, value=1}})  
            gg.setValues({{address=t[i].address+0x58 , flags=4, value=0}})  
            gg.setValues({{address=t[i].address+0xA0 , flags=4, value=3081}}) 
            gg.setValues({{address=t[i].address+0xA4 , flags=4, value=500}})  
            gg.setValues({{address=t[i].address+0xA8 , flags=4, value=0}})
        end
    end
    gg.toast(idiomas[idioma].valores_editados)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function cambiarHabilidades()
    menucambiarHabilidades = gg.choice({
        "▶️ " .. idiomas[idioma].buscar_id_secundario,
        "▶️ " .. idiomas[idioma].cambiar_habilidad,
        "▶️ " .. idiomas[idioma].clonar_dragon,
        "▶️ " .. idiomas[idioma].subir_nivel,
        "▶️ " .. idiomas[idioma].entrenar_dragon
    }, nil, idiomas[idioma].seleccionar_categoria) or principal()
    if menucambiarHabilidades == 1 then buscarID() end
    if menucambiarHabilidades == 2 then cambiarHabilidad() end
    if menucambiarHabilidades == 3 then clonarDragon() end
    if menucambiarHabilidades == 4 then subirNivel() end
    if menucambiarHabilidades == 5 then entrenarDragon() end
end

function buscarID()
    datos = gg.prompt({idiomas[idioma].ingresar_id_dragon}, {[1]=''}, {[1]='number'})
    
    if datos == nil then
        return
    end
    
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(datos[1]..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(datos[1]..";0;::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(datos[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    
    local t = gg.getResults(100)
    local id_list = {}

    for i, v in ipairs(t) do
        id_second = gg.getValues({{address = t[i].address + 0x4, flags = 4}})[1].value
        if id_second > 1 and id_second < 5000 then
            table.insert(id_list, id_second)
            gg.copyText(id_second)
        end
    end

    if #id_list > 0 then
        guardarEnTxt(id_list)
        gg.toast(idiomas[idioma].codigos_guardados, true)
    else
        gg.toast(idiomas[idioma].no_id_encontrado, true)
    end
end

function guardarEnTxt(lista)
    local path = "/storage/emulated/0/Download/Codigos.txt"
    local file = io.open(path, "w")
    if file then
        file:write(idiomas[idioma].titulo_codigos .. "\n")
        for _, id in ipairs(lista) do
            file:write(id .. "\n")
        end
        file:close()
    else
        gg.toast(idiomas[idioma].error_guardar, true)
    end
end

function cambiarHabilidad()
    datos = gg.prompt(
        {
            idiomas[idioma].ingresar_id_dragon,
            idiomas[idioma].ingresar_id_secundario,
            idiomas[idioma].ingresar_id_habilidad
        },
        {[1]='',[2]='',[3]=''},
        {[1]='number',[2]='number',[3]='number'}
    )

    if datos == nil then
        return
    end

    id_dragon = datos[1]
    id_second = datos[2]
    id_habilidad = datos[3]

    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    
    local t = gg.getResults(100)
    local select_x = 0

    while (select_x <= 0) do
        gg.setVisible(false)
        munecambiarHabilidades = gg.choice({
            "▶️ " .. idiomas[idioma].confirmar_cambio,
            "▶️ " .. idiomas[idioma].rechazar_cambio
        }, nil, idiomas[idioma].seleccionar_opcion) or principal()

        if munecambiarHabilidades == 1 then 
            for i, v in ipairs(t) do
                valor_hab5 = gg.getValues({{address = t[i].address + 0x30, flags = 4}})[1].value
                valor_hab6 = gg.getValues({{address = t[i].address + 0x34, flags = 4}})[1].value
                valor_hab7 = gg.getValues({{address = t[i].address + 0x38, flags = 4}})[1].value
                valor_hab8 = gg.getValues({{address = t[i].address + 0x3C, flags = 4}})[1].value  
            end
            gg.setValues({{address = t[1].address, flags = 4, value = id_dragon}})
            select_x = 1
        end
        
        if munecambiarHabilidades == 2 then 
            for i, v in ipairs(t) do
                gg.setValues({{address = t[i].address, flags = 4, value = id_habilidad}})
                gg.sleep(3000) 
            end
        end
    end

    t = nil
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(100)
    for i, v in ipairs(t) do
        gg.setValues({{address = t[i].address + 0x20, flags = 4, value = valor_hab5}})
        gg.setValues({{address = t[i].address + 0x24, flags = 4, value = valor_hab6}})
        gg.setValues({{address = t[i].address + 0x28, flags = 4, value = valor_hab7}})
        gg.setValues({{address = t[i].address + 0x2C, flags = 4, value = valor_hab8}})   
    end

    gg.toast(idiomas[idioma].valores_editados, true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function clonarDragon()
    datos = gg.prompt(
        {
            idiomas[idioma].ingresar_id_dragon_cambiar,
            idiomas[idioma].ingresar_id_secundario_cambiar,
            idiomas[idioma].ingresar_id_dragon_clonar
        },
        {[1]='', [2]='', [3]=''},
        {[1]='number', [2]='number', [3]='number'}
    )

    if datos == nil then
        return
    end

    id_dragon = datos[1]
    id_second = datos[2]
    id_clon = datos[3]

    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(100)
    gg.editAll(id_clon, gg.TYPE_DWORD)

    gg.toast(idiomas[idioma].valores_editados, true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function subirNivel()
    datos = gg.prompt(
        {
            idiomas[idioma].ingresar_id_dragon,
            idiomas[idioma].ingresar_id_secundario,
            idiomas[idioma].subir_nivel,
            idiomas[idioma].bajar_nivel
        },
        {nil, nil, nil, nil},
        {'number', 'number', 'checkbox', 'checkbox'}
    )

    if datos == nil then
        return
    end

    id_dragon = datos[1]
    id_second = datos[2]

    if datos[3] then 
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

        local t = gg.getResults(100)
        for i, v in ipairs(t) do
            valor_nivel = gg.getValues({{address=t[1].address+0x0C, flags=4}})[1].value
            gg.setValues({{address=t[i].address+0x0C, flags=4, value=valor_nivel+40}})
        end

        gg.toast(idiomas[idioma].valores_editados, true)
        gg.sleep(1000)
        os.exit(gg.setVisible(false))
    end

    if datos[4] then 
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

        local t = gg.getResults(100)
        for i, v in ipairs(t) do
            valor_nivel = gg.getValues({{address=t[1].address+0x0C, flags=4}})[1].value
            gg.setValues({{address=t[i].address+0x0C, flags=4, value=valor_nivel-40}})
        end

        gg.toast(idiomas[idioma].valores_editados, true)
        gg.sleep(1000)
        os.exit(gg.setVisible(false))
    end
end

function entrenarDragon()
    menuEntrenar = gg.choice({
        idiomas[idioma].opcion_recomendada,
        idiomas[idioma].opcion_opcional
    }, nil, idiomas[idioma].seleccionar_opcion) or principal()
    if menuEntrenar == 1 then
        datos = gg.prompt({idiomas[idioma].ingresar_id_dragon,idiomas[idioma].ingresar_id_secundario}, {[1]='',[2]=''}, {[1]='number',[2]='number'})
        if datos == nil then
            return
        end
        id_dragon=datos[1]
        id_second=datos[2]
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
        for i, v in ipairs(t) do
            valor_hab1=gg.getValues({{address=t[i].address+0x30 , flags=4}})[1].value
            valor_hab2=gg.getValues({{address=t[i].address+0x34 , flags=4}})[1].value
            valor_hab3=gg.getValues({{address=t[i].address+0x38 , flags=4}})[1].value
            valor_hab4=gg.getValues({{address=t[i].address+0x3C , flags=4}})[1].value  
        end
        select_x=0
        while (select_x<=0) do
            gg.setVisible(false)
            menuEntrenardragon = gg.choice({
                idiomas[idioma].habilidad_1,
                idiomas[idioma].habilidad_2,
                idiomas[idioma].habilidad_3,
                idiomas[idioma].habilidad_4
            }, nil, idiomas[idioma].seleccionar_habilidad) or principal()
            if menuEntrenardragon == 1 then
                for i, v in ipairs(t) do
                    valor_hab5=gg.getValues({{address=t[i].address+0x30 , flags=4}})[1].value
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab5}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab5}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab5}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab5}})   
                end
                valor_hab9 = nil
                if valor_hab5 == valor_hab1 then
                    valor_hab9 = valor_hab2
                    gg.setValues({{address=t[1].address+0x20, flags=4, value=valor_hab9}})
                elseif valor_hab5 == valor_hab2 then
                    valor_hab9 = valor_hab3
                    gg.setValues({{address=t[1].address+0x24, flags=4, value=valor_hab9}})
                elseif valor_hab5 == valor_hab3 then
                    valor_hab9 = valor_hab4
                    gg.setValues({{address=t[1].address+0x28, flags=4, value=valor_hab9}})
                elseif valor_hab5 == valor_hab4 then
                    valor_hab9 = valor_hab1
                    gg.setValues({{address=t[1].address+0x2C, flags=4, value=valor_hab9}})
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
            if menuEntrenardragon == 2 then
                for i, v in ipairs(t) do
                    valor_hab6=gg.getValues({{address=t[i].address+0x34 , flags=4}})[1].value 
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab6}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab6}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab6}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab6}})    
                end
                valor_hab9 = nil
                if valor_hab6 == valor_hab1 then
                    valor_hab9 = valor_hab2
                    gg.setValues({{address=t[1].address+0x20, flags=4, value=valor_hab9}})
                elseif valor_hab6 == valor_hab2 then
                    valor_hab9 = valor_hab3
                    gg.setValues({{address=t[1].address+0x24, flags=4, value=valor_hab9}})
                elseif valor_hab6 == valor_hab3 then
                    valor_hab9 = valor_hab4
                    gg.setValues({{address=t[1].address+0x28, flags=4, value=valor_hab9}})
                elseif valor_hab6 == valor_hab4 then
                    valor_hab9 = valor_hab1
                    gg.setValues({{address=t[1].address+0x2C, flags=4, value=valor_hab9}})
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
            if menuEntrenardragon == 3 then
                for i, v in ipairs(t) do
                    valor_hab7=gg.getValues({{address=t[i].address+0x38 , flags=4}})[1].value
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab7}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab7}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab7}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab7}})    
                end
                valor_hab9 = nil
                if valor_hab7 == valor_hab1 then
                    valor_hab9 = valor_hab2
                    gg.setValues({{address=t[1].address+0x20, flags=4, value=valor_hab9}})
                elseif valor_hab7 == valor_hab2 then
                    valor_hab9 = valor_hab3
                    gg.setValues({{address=t[1].address+0x24, flags=4, value=valor_hab9}})
                elseif valor_hab7 == valor_hab3 then
                    valor_hab9 = valor_hab4
                    gg.setValues({{address=t[1].address+0x28, flags=4, value=valor_hab9}})
                elseif valor_hab7 == valor_hab4 then
                    valor_hab9 = valor_hab1
                    gg.setValues({{address=t[1].address+0x2C, flags=4, value=valor_hab9}})
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
            if menuEntrenardragon == 4 then
                for i, v in ipairs(t) do
                    valor_hab8=gg.getValues({{address=t[i].address+0x3C , flags=4}})[1].value  
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab8}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab8}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab8}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab8}})  
                end
                valor_hab9 = nil
                if valor_hab8 == valor_hab1 then
                    valor_hab9 = valor_hab2
                    gg.setValues({{address=t[1].address+0x20, flags=4, value=valor_hab9}})
                elseif valor_hab8 == valor_hab2 then
                    valor_hab9 = valor_hab3
                    gg.setValues({{address=t[1].address+0x24, flags=4, value=valor_hab9}})
                elseif valor_hab8 == valor_hab3 then
                    valor_hab9 = valor_hab4
                    gg.setValues({{address=t[1].address+0x28, flags=4, value=valor_hab9}})
                elseif valor_hab8 == valor_hab4 then
                    valor_hab9 = valor_hab1
                    gg.setValues({{address=t[1].address+0x2C, flags=4, value=valor_hab9}})
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
        end
    end
    if menuEntrenar == 2 then
        datos = gg.prompt({idiomas[idioma].ingresar_id_dragon,idiomas[idioma].ingresar_id_secundario}, {[1]='',[2]=''}, {[1]='number',[2]='number'})
        if datos == nil then
            return
        end
        id_dragon=datos[1]
        id_second=datos[2]
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
        for i, v in ipairs(t) do
            valor_hab5=gg.getValues({{address=t[i].address+0x20 , flags=4}})[1].value
            valor_hab6=gg.getValues({{address=t[i].address+0x24 , flags=4}})[1].value
            valor_hab7=gg.getValues({{address=t[i].address+0x28 , flags=4}})[1].value
            valor_hab8=gg.getValues({{address=t[i].address+0x2C , flags=4}})[1].value  
        end
        valor_hab9 = nil
        if valor_hab5 ~= valor_hab6 then
            valor_hab9 = valor_hab6
        elseif valor_hab5 ~= valor_hab7 then
            valor_hab9 = valor_hab7
        elseif valor_hab5 ~= valor_hab8 then
            valor_hab9 = valor_hab8
        end
        for i, v in ipairs(t) do
            gg.setValues({{address=t[i].address+0x20 , flags=4, value=valor_hab9}})
            gg.setValues({{address=t[i].address+0x24 , flags=4, value=valor_hab9}})
            gg.setValues({{address=t[i].address+0x28 , flags=4, value=valor_hab9}})
            gg.setValues({{address=t[i].address+0x2C , flags=4, value=valor_hab9}})    
        end
        select_x=0
        while (select_x<=0) do
            gg.setVisible(false)
            menuEntrenardragon = gg.choice({
                idiomas[idioma].habilidad_1,
                idiomas[idioma].habilidad_2,
                idiomas[idioma].habilidad_3,
                idiomas[idioma].habilidad_4
            }, nil, idiomas[idioma].seleccionar_habilidad) or principal()
            if menuEntrenardragon == 1 then
                for i, v in ipairs(t) do
                    valor_hab5=gg.getValues({{address=t[i].address+0x30 , flags=4}})[1].value
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab5}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab5}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab5}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab5}})   
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
            if menuEntrenardragon == 2 then
                for i, v in ipairs(t) do
                    valor_hab6=gg.getValues({{address=t[i].address+0x34 , flags=4}})[1].value 
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab6}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab6}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab6}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab6}})    
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
            if menuEntrenardragon == 3 then
                for i, v in ipairs(t) do
                    valor_hab7=gg.getValues({{address=t[i].address+0x38 , flags=4}})[1].value
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab7}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab7}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab7}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab7}})    
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
            if menuEntrenardragon == 4 then
                for i, v in ipairs(t) do
                    valor_hab8=gg.getValues({{address=t[i].address+0x3C , flags=4}})[1].value  
                end
                t = nil
                gg.clearResults()
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
                gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
                local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
                for i, v in ipairs(t) do
                    gg.setValues({{address=t[i].address+0x30 , flags=4, value=valor_hab8}})
                    gg.setValues({{address=t[i].address+0x34 , flags=4, value=valor_hab8}})
                    gg.setValues({{address=t[i].address+0x38 , flags=4, value=valor_hab8}})
                    gg.setValues({{address=t[i].address+0x3C , flags=4, value=valor_hab8}})  
                end
                gg.toast(idiomas[idioma].valores_editados, true)
                gg.sleep(1000)
                os.exit(gg.setVisible(false))
                select_x=1 
            end
        end
    end
end

function Coleccion()
    local datos = gg.prompt({idiomas[idioma].ingresar_cantidad_coleccion}, {nil}, {"number"})
    if datos == nil then
        return
    end
    gg.setValues({{address = 0xCC647E58, flags = gg.TYPE_DWORD, value = datos[1]}})
    gg.toast(idiomas[idioma].valores_editados, true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end
function Code()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("Q'tid_'", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.processResume()
    revert = gg.getResults(200000)
    gg.editAll("Q ''", gg.TYPE_BYTE)
    gg.clearResults()
    gg.alert('🟡Show all id item on game🟡')
end 
while true do
    if gg.isVisible() then
        gg.setVisible(false)
        principal()
    end
    gg.sleep(100)
end
