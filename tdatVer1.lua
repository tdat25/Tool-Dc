function principal()
    menuPrincipal = gg.choice({
        "Ẩn GameGuardian 💤",
        "Đấu trường 🏟",
        "Cứu rồng 🐉",
        "Cày rank rồng 🎖",
        "Thay đổi kỹ năng 🔄",
        "Lấy id 🏅",
        "Thoát 📲"
    }, nil, "Võ Đạt") or gg.setVisible(false)
    if menuPrincipal == 1 then Ocultar() end
    if menuPrincipal == 2 then batallaArena() end
    if menuPrincipal == 3 then rescateDragon() end
    if menuPrincipal == 4 then farmeoOrbes() end
    if menuPrincipal == 5 then buscadorID() end
    if menuPrincipal == 6 then Coleccion() end
    if menuPrincipal == 7 then os.exit(gg.setVisible(true)) end
    verificador = -1
end

function Ocultar()
    gg.setVisible(false)
    gg.toast("Đã ẩn GameGuardian 💤", true)
end

batalla = 0
function batallaArena()
    if batalla == 0 then
        datos = gg.prompt({
            'Nhập ID rồng 1 🔎',
            'Nhập cấp độ rồng 1 🔎',
            'Nhập cấp độ rồng 2 🔎',
            'Nhập số sao rồng 1 ✨',
            'Nhập số sao rồng 2 ✨'
        }, {nil,nil,nil,nil,nil}, {'number','number','number','number','number'})
        if datos == nil then
            return
        end
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
    gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
    gg.sleep(1000)          
end

function rescateDragon()
    menubuscadorID = gg.choice({
        "▶️ Cứu rồng huyền thoại",
        "▶️ Cứu rồng sử thi",
        "▶️ Cứu rồng rất hiếm",
        "▶️ Cứu rồng hiếm",
        "▶️ Cứu rồng thường"
    }, nil, "Chọn độ hiếm để bắt đầu tìm kiếm") or principal()
    if menubuscadorID == 1 then lvl="30~70" dragon() end
    if menubuscadorID == 2 then lvl="10~70" dragon() end
    if menubuscadorID == 3 then lvl="10~70" dragon() end
    if menubuscadorID == 4 then lvl="10~70" dragon() end
    if menubuscadorID == 5 then lvl="10~70" dragon() end
end

function dragon()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber("1000~5600;-1;"..lvl..";0~5::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000~5600;-1;"..lvl.."::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000~5600;"..lvl.."::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(99999)
    gg.editAll("1011;1", gg.TYPE_DWORD)
    gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function farmeoOrbes()
    id={}
    nivel={}
    estrellas={}
    datos = gg.prompt({
        [1]='Nhập ID rồng 1 🔎',
        [2]='Nhập cấp độ rồng 1 🔎',
        [3]='Nhập số sao rồng 1 🔎',
        [4]='Nhập ID rồng 2 🔎',
        [5]='Nhập cấp độ rồng 2 🔎',
        [6]='Nhập số sao rồng 2 🔎',
        [7]='Nhập ID rồng 3 🔎',
        [8]='Nhập cấp độ rồng 3 🔎',
        [9]='Nhập số sao rồng 3 🔎'
    }, {[1]='', [2]='', [3]='', [4]='', [5]='', [6]='', [7]='', [8]='', [9]=''},
    {[1]='number', [2]='number', [3]='number', [4]='number', [5]='number', [6]='number', [7]='number', [8]='number', [9]='number'})
    if datos == nil then
        return
    end
    id[1]=datos[1] 
    id[2]=datos[4]
    id[3]=datos[7]
    nivel[1]=datos[2] 
    nivel[2]=datos[5] 
    nivel[3]=datos[8] 
    estrellas[1]=datos[3]  
    estrellas[2]=datos[6] 
    estrellas[3]=datos[9] 
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id[1]..";"..nivel[1]..";"..estrellas[1]..";1.5F;"..id[2]..";"..nivel[2]..";"..estrellas[2]..";1.5F;"..id[3]..";"..nivel[3]..";"..estrellas[3]..";1.5F::221", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id[1]..";"..nivel[1]..";"..estrellas[1]..";1.5F;"..id[2]..";"..nivel[2]..";"..estrellas[2]..";1.5F;"..id[3].."::161", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id[1]..";"..nivel[1]..";"..estrellas[1]..";1.5F;"..id[2].."::81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id[1]..";"..nivel[1]..";"..estrellas[1].."::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id[1]..";"..nivel[1].."::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id[1],gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs(t) do
        gg.setValues({{address=t[i].address+0 , flags=4, value=1011}})
        gg.setValues({{address=t[i].address+0x8 , flags=4, value=1}})
        gg.setValues({{address=t[i].address+0x10 , flags=4, value=0}})
        gg.setValues({{address=t[i].address+0x50 , flags=4, value=1011}})
        gg.setValues({{address=t[i].address+0x58 , flags=4, value=1}})
        gg.setValues({{address=t[i].address+0x60 , flags=4, value=0}})
        gg.setValues({{address=t[i].address+0xA0 , flags=4, value=3011}}) 
        gg.setValues({{address=t[i].address+0xA8 , flags=4, value=500}})
        gg.setValues({{address=t[i].address+0xB0 , flags=4, value=0}})
    end
    gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function buscadorID()
    menubuscadorID = gg.choice({
        "▶️ Tìm ID phụ",
        "▶️ Thay đổi kỹ năng",
        "▶️ Nhân bản rồng",
        "▶️ Tăng cấp",
        "▶️ Huấn luyện rồng"
    }, nil, "Chọn danh mục để thay đổi kỹ năng") or principal()
    if menubuscadorID == 1 then buscarID() end
    if menubuscadorID == 2 then cambiarHabilidades() end
    if menubuscadorID == 3 then clonarDragon() end
    if menubuscadorID == 4 then subirNivel() end
    if menubuscadorID == 5 then entrenarDragon() end
end

function buscarID()
    datos = gg.prompt({'Nhập ID rồng 🔎'}, {[1]=''}, {[1]='number'})
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
        if id_second > 1 and id_second < 2000 then
            table.insert(id_list, id_second)
            gg.copyText(id_second)
        end
    end

    if #id_list > 0 then
        guardarEnTxt(id_list)
        gg.toast('✅ Đã lưu mã vào Codigos.txt ✅', true)
    else
        gg.toast('❌ Không tìm thấy ID phụ hợp lệ ❌', true)
    end
end

function guardarEnTxt(lista)
    local path = "/storage/emulated/0/Download/Codigos.txt"
    local file = io.open(path, "w")
    if file then
        file:write("Các mã ID phụ có thể\n")
        for _, id in ipairs(lista) do
            file:write(id .. "\n")
        end
        file:close()
    else
        gg.toast("❌ Lỗi khi lưu tệp ❌", true)
    end
end

function cambiarHabilidades()
    datos = gg.prompt({
        'Nhập ID rồng 🔎',
        'Nhập ID phụ của rồng 🔎',
        'Nhập ID rồng muốn lấy kỹ năng 🔎'
    }, {[1]='',[2]='',[3]=''}, {[1]='number',[2]='number',[3]='number'})
    if datos == nil then
        return
    end
    id_dragon=datos[1]
    id_second=datos[2]
    id_habilidad=datos[3]
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    select_x=0
    while (select_x<=0) do
        gg.setVisible(false)
        munecambiarHabilidades = gg.choice({
            "▶️ Thay đổi rồng của bạn? CÓ",
            "▶️ Thay đổi rồng của bạn? KHÔNG"
        }, nil, "Chọn độ hiếm để bắt đầu tìm kiếm") or principal()
        if munecambiarHabilidades == 1 then 
            for i, v in ipairs(t) do
                valor_hab5=gg.getValues({{address=t[i].address+0x30 , flags=4}})[1].value
                valor_hab6=gg.getValues({{address=t[i].address+0x34 , flags=4}})[1].value
                valor_hab7=gg.getValues({{address=t[i].address+0x38 , flags=4}})[1].value
                valor_hab8=gg.getValues({{address=t[i].address+0x3C , flags=4}})[1].value  
            end
            gg.setValues({{address=t[1].address+0 , flags=4, value=id_dragon}})
            select_x=1
        end
        if munecambiarHabilidades == 2 then 
            for i, v in ipairs(t) do
                gg.setValues({{address=t[i].address+0 , flags=4, value=id_habilidad}})
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
    local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs(t) do
        gg.setValues({{address=t[i].address+0x20 , flags=4, value=valor_hab5}})
        gg.setValues({{address=t[i].address+0x24 , flags=4, value=valor_hab6}})
        gg.setValues({{address=t[i].address+0x28 , flags=4, value=valor_hab7}})
        gg.setValues({{address=t[i].address+0x2C , flags=4, value=valor_hab8}})   
    end
    gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function clonarDragon()
    datos = gg.prompt({
        'Nhập ID rồng sẽ thay đổi 🔎',
        'Nhập ID phụ của rồng sẽ thay đổi 🔎',
        'Nhập ID rồng muốn nhân bản 🔎'
    }, {[1]='',[2]='',[3]=''}, {[1]='number',[2]='number',[3]='number'})
    if datos == nil then
        return
    end
    id_dragon=datos[1]
    id_second=datos[2]
    id_clon=datos[3]
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll(id_clon, gg.TYPE_DWORD)
    gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
    gg.sleep(1000)
    os.exit(gg.setVisible(false))
end

function subirNivel()
    datos = gg.prompt({
        'Nhập ID rồng 🔎',
        'Nhập ID phụ của rồng 🔎',
        'Tăng cấp',
        'Hạ cấp'
    }, {nil,nil,nil,nil}, {'number','number','checkbox','checkbox'})
    if datos == nil then
        return
    end
    id_dragon=datos[1]
    id_second=datos[2]
    if datos[3] then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber(id_dragon..";"..id_second..";0;-1::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second..";0::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon..";"..id_second.."::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(id_dragon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
        for i, v in ipairs(t) do
            valor_nivel=gg.getValues({{address=t[1].address+0x0C , flags=4}})[1].value
            gg.setValues({{address=t[i].address+0x0C , flags=4, value=valor_nivel+40}})
        end
        gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
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
        local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
        for i, v in ipairs(t) do
            valor_nivel=gg.getValues({{address=t[1].address+0x0C , flags=4}})[1].value
            gg.setValues({{address=t[i].address+0x0C , flags=4, value=valor_nivel-40}})
        end
        gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
        gg.sleep(1000)
        os.exit(gg.setVisible(false))
    end
end

function entrenarDragon()
    datos = gg.prompt({
        'Nhập ID rồng 🔎',
        'Nhập ID phụ của rồng 🔎'
    }, {[1]='',[2]=''}, {[1]='number',[2]='number'})
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
        muneentrenardragon = gg.choice({
            "▶️ Kỹ năng 1",
            "▶️ Kỹ năng 2",
            "▶️ Kỹ năng 3",
            "▶️ Kỹ năng 4"
        }, nil, "Chọn kỹ năng để bắt đầu tìm kiếm") or principal()
        if muneentrenardragon == 1 then
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
            gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
            gg.sleep(1000)
            os.exit(gg.setVisible(false))
            select_x=1 
        end
        if muneentrenardragon == 2 then
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
            gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
            gg.sleep(1000)
            os.exit(gg.setVisible(false))
            select_x=1 
        end
        if muneentrenardragon == 3 then
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
            gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
            gg.sleep(1000)
            os.exit(gg.setVisible(false))
            select_x=1 
        end
        if muneentrenardragon == 4 then
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
            gg.toast('✅ Đã chỉnh sửa giá trị ✅', true)
            gg.sleep(1000)
            os.exit(gg.setVisible(false))
            select_x=1 
        end
    end
end

function Coleccion()
 gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("Q'tid_'", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.processResume()
            revert = gg.getResults(200000)
            gg.editAll("Q ''", gg.TYPE_BYTE)
            gg.clearResults()
            gg.alert('🟡Show all id item on game🟡')
end

while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        verificador = 1
        if verificador == 1 then
            principal()
        end
    end
end
