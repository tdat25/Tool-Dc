function principal()
    menuPrincipal = gg.choice({
        idiomas[idioma].coleccion,
    },
    if menuPrincipal == 1 then Coleccion() end
end

function Coleccion()

            local MenuMove = {}
            local configFile = gg.EXT_CACHE_DIR .. "/" .. 
            gg.getFile():match("") .. "Move.text"
            local data = loadfile(configFile)
            if data ~= nil then
              data = data()
            end
            MenuMove = gg.prompt({
            '🌎1x1 to all🌎 ',
            '🌎2x2 to all🌎 ',
            '🌎3x3 to all🌎 ',
            '🌎4x4 to all🌎 ',
            '🌎5x5 to all🌎 ',
            '🌎6x6 to all🌎 ',
            '❌Get back menu❌'},data,{'checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
            if MenuMove ==nil then
            else
            gg.saveVariable(MenuMove, configFile)
            if MenuMove[1] then
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("-300~300F;1 065 353 216;1 065 353 216;2~1000;10~10000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.refineNumber("1 065 353 216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(5000)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            end
            if MenuMove[2] then
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("-300~300F;1 073 741 824;1 073 741 824::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.refineNumber("1 073 741 824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(5000)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            end
            if MenuMove[3] then
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("-300~300F;1 077 936 128;1 077 936 128::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.refineNumber("1 077 936 128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(5000)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            end
            if MenuMove[4] then
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("-300~300F;1 082 130 432;1 082 130 432::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.refineNumber("1 082 130 432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(5000)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            end
            if MenuMove[5] then
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("-300~300F;1 084 227 584;1 084 227 584::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.refineNumber("1 084 227 584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(5000)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            end
            if MenuMove[6] then
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("-300~300F;1 086 324 736;1 086 324 736::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.refineNumber("1 086 324 736", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(5000)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            end
            if MenuMove[7] then MenuIslandMode() end end end
