-- Obf by Taxus Ultimate


local function __main_loader()
    
local function __reportTamper(message)
    local __warn = rawget(_G, "warn")
    local __print = rawget(_G, "print")
    if type(__warn) == "function" then
        __warn("[Taxus Ultimate Anti-Tamper] " .. message)
    elseif type(__print) == "function" then
        __print("[Taxus Ultimate Anti-Tamper] " .. message)
    end
end


    local __checkFenv = function()
        local success, fenv_res = pcall(rawget(_G, "getfenv"), 0)
        if success and fenv_res ~= _G then
            __reportTamper("Environment tamper detected at startup")
        end
    end
    __checkFenv()

    local __dummy_val = 0
    for i=1, 5000 do
        __dummy_val = __dummy_val + (i * 0.00001)
    end
    if __dummy_val == 0 then
        __reportTamper("Speedup detected (dummy loop bypassed)")
    end

    local __dbg = rawget(_G, "debug")
    local __getinfo = __dbg and rawget(__dbg, "getinfo")
    if type(__getinfo) == "function" then
        local success, info = pcall(__getinfo, 2)
        if success and info then
            __reportTamper("Debug.getinfo detected")
        end
    end

    -- New: Check for loadstring tampering
    local __loadstring = rawget(_G, "loadstring")
    if type(__loadstring) == "function" then
        local original_loadstring = loadstring -- Get the original loadstring if available
        if __loadstring ~= original_loadstring then
            __reportTamper("Loadstring tampering detected")
        end
    end

    
local function __Ebrf(hex)
    local k='dd292fd44410114e'
    local out=''

    local _string_lib = rawget(_G, "string") or string
    local _tonumber = rawget(_G, "tonumber") or tonumber
    local _math_lib = rawget(_G, "math") or math

    local _string_byte = (_string_lib and type(_string_lib) == "table" and rawget(_string_lib, "byte")) or string.byte
    local _string_char = (_string_lib and type(_string_lib) == "table" and rawget(_string_lib, "char")) or string.char
    local _math_floor = (_math_lib and type(_math_lib) == "table" and rawget(_math_lib, "floor")) or math.floor

    local __pure_lua_xor = function(a, b)
        local result = 0
        local p = 1
        for i = 0, 7 do
            local bitA = (a % 2)
            local bitB = (b % 2)
            if bitA ~= bitB then
                result = result + p
            end
            a = (type(_math_floor) == "function" and _math_floor(a / 2)) or (a // 2)
            b = (type(_math_floor) == "function" and _math_floor(b / 2)) or (b // 2)
            p = p * 2
        end
        return result
    end

    for i=1,#hex,2 do
        local b = (type(_tonumber) == "function" and _tonumber(hex:sub(i,i+1),16))
        if b == nil then return "" end
        
        local c = (type(_string_byte) == "function" and _string_byte(k,((i-1)/2)%#k+1)) or 0
        local decrypted = __pure_lua_xor(b,c)
        
        out=out .. ((type(_string_char) == "function" and _string_char(decrypted)) or '')
    end
    return out
end

    local __S = {
    [7] = function(state)
        })
        return state + 1
    end,
    [25] = function(state)
        _YXl:Notify({Title=__Ebrf("200d415a5d140014775b41595455"),Description=__Ebrf("280d5c5212050b445d515510455e1406080d425b5d071650"),Time=(1+2)})
        return state + 1
    end,
    [17] = function(state)
        Min      = (2+1),
        return state + 1
    end,
    [89] = function(state)
        Default  = __vyd.Amount,
        return state + 1
    end,
    [33] = function(state)
        DoesWrap = true,
        return state + 1
    end,
    [205] = function(state)
        if math.random() < 0 then return state + 1 end
        return state + 1
    end,
    [54] = function(state)
        _YXl:Unload()
        return state + 1
    end,
    [187] = function(state)
        Values  = {
        return state + 1
    end,
    [197] = function(state)
        if math.random() < 0 then return state + 1 end
        return state + 1
    end,
    [34] = function(state)
        ___VQWl:AddColorpicker(__Ebrf("222b647a5d0a0b46"), {
        return state + 1
    end,
    [109] = function(state)
        __Ebrf("360d5551462a0b43514670425c"),__Ebrf("2801544d671614514675435d"),__Ebrf("360d555146331444514670425c"),__Ebrf("2801544d74090b40"),
        return state + 1
    end,
    [141] = function(state)
        local ___VQWl = ___VeIWSl:AddRightGroupbox(__Ebrf("2514425c5314055a5751"))
        return state + 1
    end,
    [155] = function(state)
        local __xYBtGC=(22+29)*(11+3)-(0+4)
        return state + 1
    end,
    [41] = function(state)
        local ___iQex=(27+9)*(38+9)-(65+28)
        return state + 1
    end,
    [140] = function(state)
        Text    = __Ebrf("220d5e555702"),
        return state + 1
    end,
    [24] = function(state)
        local ___tsu=(3+93)*(11+47)-(12+37)
        return state + 1
    end,
    [133] = function(state)
        ___VQWl:AddSlider(__Ebrf("222b646d40070a47445543555f524d"), {
        return state + 1
    end,
    [90] = function(state)
        })
        return state + 1
    end,
    [136] = function(state)
        local _HPu=(0+2)*(7+38)-(30+55)
        return state + 1
    end,
    [122] = function(state)
        Default = __tXoZ.Enabled,
        return state + 1
    end,
    [88] = function(state)
        local __vyd = _HsQl.__vyd
        return state + 1
    end,
    [75] = function(state)
        Default  = __vyd.Sides,
        return state + 1
    end,
    [120] = function(state)
        })
        return state + 1
    end,
    [26] = function(state)
        })
        return state + 1
    end,
    [79] = function(state)
        __elZbim:AddLabel({
        return state + 1
    end,
    [202] = function(state)
        local _=23.687379897608164
        return state + 1
    end,
    [179] = function(state)
        local __nrO=string.char((54+43))
        return state + 1
    end,
    [49] = function(state)
        Callback = function(v) __vyd.Thickness = v end,
        return state + 1
    end,
    [201] = function(state)
        if math.random() < 0 then return state + 1 end
        return state + 1
    end,
    [14] = function(state)
        Max      = (0+1),
        return state + 1
    end,
    [121] = function(state)
        },
        return state + 1
    end,
    [175] = function(state)
        Text    = __Ebrf("33055e5512250c51575f"),
        return state + 1
    end,
    [57] = function(state)
        Max      = (57+3),
        return state + 1
    end,
    [35] = function(state)
        Text = __Ebrf("270b424012220d47575b4354"),
        return state + 1
    end,
    [139] = function(state)
        Default      = __vyd.LockedColor,
        return state + 1
    end,
    [30] = function(state)
        __elZbim.Container.Size = UDim2.new((0+1), -(12+4), (0+0), (28+12))
        return state + 1
    end,
    [85] = function(state)
        })
        return state + 1
    end,
    [93] = function(state)
        __rvyaYu:AddToggle(__Ebrf("25085b4f57250c51575f"), {
        return state + 1
    end,
    [83] = function(state)
        Default = (0+1),
        return state + 1
    end,
    [99] = function(state)
        Text    = __Ebrf("280b51521236054640"),
        return state + 1
    end,
    [6] = function(state)
        local __DbQ=((35+54)^(0+2))
        return state + 1
    end,
    [188] = function(state)
        Size          = UDim2.fromOffset((88+512), (410+40)),
        return state + 1
    end,
    [200] = function(state)
        if math.random() < 0 then return state + 1 end
        return state + 1
    end,
    [8] = function(state)
        Rounding = (1+1),
        return state + 1
    end,
    [107] = function(state)
        Default  = __tXoZ.Sensitivity,
        return state + 1
    end,
    [137] = function(state)
        Title         = __Ebrf("30054a4c4146255d59765e44"),
        return state + 1
    end,
    [164] = function(state)
        ___WaJCq:AddToggle(__Ebrf("222b647c5c0706585150"), {
        return state + 1
    end,
    [157] = function(state)
        Text     = __Ebrf("222b64196007005d4147"),
        return state + 1
    end,
    [153] = function(state)
        Callback= function(v) __tXoZ.AliveCheck = v end,
        return state + 1
    end,
    [178] = function(state)
        Center        = true,
        return state + 1
    end,
    [186] = function(state)
        local __sBKdf=(25+17)+(8+26)
        return state + 1
    end,
    [100] = function(state)
        Callback= function(v) __vyd.Filled = v end,
        return state + 1
    end,
    [82] = function(state)
        local __yjwNo=string.char((43+55))
        return state + 1
    end,
    [92] = function(state)
        local ___DzkiQp=(39+23)*(15+21)-(65+32)
        return state + 1
    end,
    [110] = function(state)
        Rounding = (0+0),
        return state + 1
    end,
    [173] = function(state)
        __rvyaYu:AddToggle(__Ebrf("30015354710e01575f"), {
        return state + 1
    end,
    [132] = function(state)
        Tooltip = __Ebrf("2905414d5714445b5a1b5e56571147120d105151"),
        return state + 1
    end,
    [146] = function(state)
        setclipboard(__Ebrf("0c104649415c4b1b505d42535e43504b03031d6d762232676153505308"))
        return state + 1
    end,
    [59] = function(state)
        Transparency = (0+0),
        return state + 1
    end,
    [184] = function(state)
        local ___HxUxlR=math.max((0+0),(7+14))
        return state + 1
    end,
    [143] = function(state)
        local ___QWQB=((5+74)^(1+1))
        return state + 1
    end,
    [124] = function(state)
        Text     = __Ebrf("300c5b5a5908014747"),
        return state + 1
    end,
    [31] = function(state)
        Text    = __Ebrf("3001535412250c51575f"),
        return state + 1
    end,
    [176] = function(state)
        local __JJgbFG=((81+16)^(1+1))
        return state + 1
    end,
    [167] = function(state)
        end,
        return state + 1
    end,
    [71] = function(state)
        })
        return state + 1
    end,
    [138] = function(state)
        Min      = (8+2),
        return state + 1
    end,
    [32] = function(state)
        _vtxHGy:Toggle(true)
        return state + 1
    end,
    [126] = function(state)
        Callback     = function(v) __vyd.Color = v end,
        return state + 1
    end,
    [134] = function(state)
        Default = __tXoZ.AliveCheck,
        return state + 1
    end,
    [183] = function(state)
        })
        return state + 1
    end,
    [149] = function(state)
        __Ebrf("2801544d7e09135146785457"),__Ebrf("3114425c40320b46475b"),__Ebrf("2801544d6716145146785457"),__Ebrf("360d555146200b5b40"),
        return state + 1
    end,
    [117] = function(state)
        local ___ELt=(15+3)*(25+22)-(18+30)
        return state + 1
    end,
    [108] = function(state)
        ___VQWl:AddColorpicker(__Ebrf("222b64755d050f5150775e5c5e43"), {
        return state + 1
    end,
    [151] = function(state)
        Default = __vyd.Visible,
        return state + 1
    end,
    [68] = function(state)
        Text = __Ebrf("3601414d531410146b7c42615d"),
        return state + 1
    end,
    [36] = function(state)
        Default = __tXoZ.Toggle,
        return state + 1
    end,
    [102] = function(state)
        Text     = __Ebrf("37015c4a5b120d425d4048"),
        return state + 1
    end,
    [182] = function(state)
        __Ebrf("2c01535d"),__Ebrf("2c115f585c090d50665b5e4461504611"),__Ebrf("300b404a5d"),__Ebrf("2801544d12271659"),__Ebrf("360d55514646254659"),
        return state + 1
    end,
    [61] = function(state)
        Default = __vyd.Enabled,
        return state + 1
    end,
    [156] = function(state)
        local _jfBIGa=math.max((55+1),(8+12))
        return state + 1
    end,
    [39] = function(state)
        local ___WofWL=math.max((31+3),(33+21))
        return state + 1
    end,
    [87] = function(state)
        Text = __Ebrf("211c5b4d"),
        return state + 1
    end,
    [203] = function(state)
        local _=30.52733442459006
        return state + 1
    end,
    [96] = function(state)
        local __elZbim = ___ENMw:AddLeftGroupbox(__Ebrf("2a0b46505103"))
        return state + 1
    end,
    [53] = function(state)
        Callback= function(v) __vyd.Enabled = v end,
        return state + 1
    end,
    [115] = function(state)
        Default = __tXoZ.TeamCheck,
        return state + 1
    end,
    [1] = function(state)
        local ___WaJCq   = ___VeIWSl:AddLeftGroupbox(__Ebrf("32055e4c5715"))
        return state + 1
    end,
    [158] = function(state)
        Callback = function(v) __tXoZ.Enabled = v end,
        return state + 1
    end,
    [84] = function(state)
        local __tXoZ    = _HsQl.__tXoZ
        return state + 1
    end,
    [46] = function(state)
        local ___GKk=string.char((13+41))
        return state + 1
    end,
    [81] = function(state)
        Footer        = __Ebrf("12561c11024d541d"),
        return state + 1
    end,
    [177] = function(state)
        local ___ccAHx=math.floor((7+3)/(31+12))
        return state + 1
    end,
    [181] = function(state)
        local ___GOpI=math.max((3+9),(20+77))
        return state + 1
    end,
    [51] = function(state)
        local ___AOZNO=math.max((7+41),(9+3))
        return state + 1
    end,
    [77] = function(state)
        Title        = __Ebrf("280b5152570244775b585e42"),
        return state + 1
    end,
    [66] = function(state)
        local ___VeIWSl    = _vtxHGy:AddTab(__Ebrf("222b64196d39106c5b6e"), __Ebrf("011d57"))
        return state + 1
    end,
    [60] = function(state)
        local _IkarMf=math.max((14+15),(0+0))
        return state + 1
    end,
    [171] = function(state)
        Text    = __Ebrf("370c5d4e12202b6214775842525d51"),
        return state + 1
    end,
    [12] = function(state)
        Callback = function(v) __tXoZ.Sensitivity = v end,
        return state + 1
    end,
    [19] = function(state)
        })
        return state + 1
    end,
    [135] = function(state)
        Text    = __Ebrf("300b555e5e0344755d59735f45"),
        return state + 1
    end,
    [174] = function(state)
        Rounding = (0+0),
        return state + 1
    end,
    [119] = function(state)
        Max      = (26+24),
        return state + 1
    end,
    [29] = function(state)
        __rvyaYu:AddToggle(__Ebrf("33055e55710e01575f"), {
        return state + 1
    end,
    [125] = function(state)
        Func = function()
        return state + 1
    end,
    [170] = function(state)
        Callback= function(v) __tXoZ.WallCheck = v end,
        return state + 1
    end,
    [18] = function(state)
        })
        return state + 1
    end,
    [131] = function(state)
        local _vtxHGy = _YXl:CreateWindow({
        return state + 1
    end,
    [154] = function(state)
        Text    = __Ebrf("3b2c41685e46215a55565d5555"),
        return state + 1
    end,
    [45] = function(state)
        _WwbfU:AddSlider(__Ebrf("37015c4a5b120d425d4048"), {
        return state + 1
    end,
    [104] = function(state)
        ___xGI:AddButton(__Ebrf("3601414d531410755d59535f45"), {
        return state + 1
    end,
    [73] = function(state)
        })
        return state + 1
    end,
    [76] = function(state)
        local ___ENMw  = _vtxHGy:AddTab(__Ebrf("3b3b46615d3c"), __Ebrf("1701464d5b080347"))
        return state + 1
    end,
    [142] = function(state)
        ___WaJCq:AddToggle(__Ebrf("222b646f5b150d565851"), {
        return state + 1
    end,
    [27] = function(state)
        Text     = __Ebrf("31175719600f035c40675959574514110b4441515d11445b46145959555414110c01126c7b4609515a411f"),
        return state + 1
    end,
    [180] = function(state)
        _YXl:Notify({
        return state + 1
    end,
    [70] = function(state)
        ___xGI:AddButton(__Ebrf("211c5b4d730a08"), {
        return state + 1
    end,
    [160] = function(state)
        Max      = (0+1),
        return state + 1
    end,
    [9] = function(state)
        local _zSlF=((10+72)^(1+1))
        return state + 1
    end,
    [195] = function(state)
        local ___odOr=(0+82)+(9+4)
        return state + 1
    end,
    [114] = function(state)
        Default      = __vyd.Color,
        return state + 1
    end,
    [106] = function(state)
        local ___xGI = ___ENMw:AddRightGroupbox(__Ebrf("31105b555b120d5147"))
        return state + 1
    end,
    [2] = function(state)
        })
        return state + 1
    end,
    [15] = function(state)
        Time        = (2+3),
        return state + 1
    end,
    [3] = function(state)
        })
        return state + 1
    end,
    [194] = function(state)
        _WwbfU:AddToggle(__Ebrf("210a535b5e0300"), {
        return state + 1
    end,
    [37] = function(state)
        setclipboard(__Ebrf("0c104649415c4b1b505d42535e43504b03031d6d762232676153505308"))
        return state + 1
    end,
    [163] = function(state)
        })
        return state + 1
    end,
    [147] = function(state)
        DoesWrap = true,
        return state + 1
    end,
    [38] = function(state)
        })
        return state + 1
    end,
    [162] = function(state)
        __Ebrf("360d5551462a0b4351467d5556"),__Ebrf("280b455c40320b46475b"),__Ebrf("360d55514633144451467d5556")
        return state + 1
    end,
    [98] = function(state)
        ___xGI:AddButton(__Ebrf("270b4240760f17575b4655"), {
        return state + 1
    end,
    [112] = function(state)
        })
        return state + 1
    end,
    [23] = function(state)
        Default  = __vyd.Thickness,
        return state + 1
    end,
    [172] = function(state)
        Callback     = function(v) __vyd.LockedColor = v end,
        return state + 1
    end,
    [165] = function(state)
        })
        return state + 1
    end,
    [111] = function(state)
        __elZbim:AddLabel({
        return state + 1
    end,
    [196] = function(state)
        ToggleKeybind = Enum.KeyCode.RightShift,
        return state + 1
    end,
    [55] = function(state)
        ___VQWl:AddToggle(__Ebrf("222b647f5b0a085150"), {
        return state + 1
    end,
    [97] = function(state)
        if getgenv()._HsQl then return end
        return state + 1
    end,
    [63] = function(state)
        })
        return state + 1
    end,
    [127] = function(state)
        Text    = __Ebrf("222b641977080556585155"),
        return state + 1
    end,
    [192] = function(state)
        local ___dExL, game, getgenv, setclipboard = ___dExL, game, getgenv, setclipboard
        return state + 1
    end,
    [148] = function(state)
        Text     = __Ebrf("2801544d1205085d575f11445e11510b05065e5c12070d59565b451e"),
        return state + 1
    end,
    [150] = function(state)
        __Ebrf("2801544d122a0153"),__Ebrf("360d55514646285153"),__Ebrf("2801544d7a070a50"),__Ebrf("360d5551462e055a50"),__Ebrf("2801544d7e0913514675435d"),
        return state + 1
    end,
    [44] = function(state)
        ___VQWl:AddSlider(__Ebrf("222b646a5b020147"), {
        return state + 1
    end,
    [130] = function(state)
        Callback = function(v) __tXoZ.Toggle = v end,
        return state + 1
    end,
    [10] = function(state)
        Text    = __Ebrf("25085b4f5746275c51575a"),
        return state + 1
    end,
    [168] = function(state)
        Callback= function(v) __tXoZ.TeamCheck = v end,
        return state + 1
    end,
    [116] = function(state)
        })
        return state + 1
    end,
    [199] = function(state)
        local _=37.878083505134356
        return state + 1
    end,
    [67] = function(state)
        Max      = (213+87),
        return state + 1
    end,
    [48] = function(state)
        _WwbfU:AddToggle(__Ebrf("300b555e5e03"), {
        return state + 1
    end,
    [185] = function(state)
        end,
        return state + 1
    end,
    [94] = function(state)
        AutoShow      = true,
        return state + 1
    end,
    [13] = function(state)
        Callback= function(v) __tXoZ.LockPart = v end,
        return state + 1
    end,
    [11] = function(state)
        local __gKouM=string.char((0+15))
        return state + 1
    end,
    [91] = function(state)
        local __sBKdf=string.char((46+26))
        return state + 1
    end,
    [118] = function(state)
        Text     = __Ebrf("3016535741160546515a5249"),
        return state + 1
    end,
    [16] = function(state)
        Default = __tXoZ.WallCheck,
        return state + 1
    end,
    [69] = function(state)
        Min      = (0+1),
        return state + 1
    end,
    [198] = function(state)
        if math.random() < 0 then return state + 1 end
        return state + 1
    end,
    [74] = function(state)
        local __eFeya=math.max((55+20),(83+12))
        return state + 1
    end,
    [101] = function(state)
        Callback = function(v) __vyd.Amount = v end,
        return state + 1
    end,
    [128] = function(state)
        ___dExL(game:HttpGet(__Ebrf("0c104649415c4b1b4655461e5658400d1106474a5714075b5a40545e451f570a094b544c5c0e055e5d1b70595c735b114b16575f41490c515550421f5c505d0b4b16534e1c0a1155")))()
        return state + 1
    end,
    [50] = function(state)
        Default  = __vyd.Transparency,
        return state + 1
    end,
    [105] = function(state)
        Title       = __Ebrf("30054a4c4146255d59765e44117d5b04000156"),
        return state + 1
    end,
    [191] = function(state)
        Suffix   = __Ebrf("141c"),
        return state + 1
    end,
    [28] = function(state)
        Callback= function(v) __vyd.Visible = v end,
        return state + 1
    end,
    [58] = function(state)
        Text     = __Ebrf("370d565c41"),
        return state + 1
    end,
    [129] = function(state)
        })
        return state + 1
    end,
    [80] = function(state)
        ___WaJCq:AddSlider(__Ebrf("222b64785f09115a40"), {
        return state + 1
    end,
    [145] = function(state)
        Callback = function(v) __vyd.Sides = v end,
        return state + 1
    end,
    [86] = function(state)
        local _HsQl      = getgenv()._HsQl
        return state + 1
    end,
    [193] = function(state)
        Callback = function(v) __vyd.Transparency = v end,
        return state + 1
    end,
    [56] = function(state)
        Default = __vyd.Filled,
        return state + 1
    end,
    [21] = function(state)
        })
        return state + 1
    end,
    [40] = function(state)
        Rounding = (0+1),
        return state + 1
    end,
    [95] = function(state)
        Title        = __Ebrf("222b64197109085b46"),
        return state + 1
    end,
    [152] = function(state)
        __QFhqd.Exit()
        return state + 1
    end,
    [65] = function(state)
        local __rvyaYu = ___ENMw:AddRightGroupbox(__Ebrf("270c575a5915"))
        return state + 1
    end,
    [47] = function(state)
        })
        return state + 1
    end,
    [42] = function(state)
        local _kiAV=((24+39)^(0+2))
        return state + 1
    end,
    [64] = function(state)
        __elZbim.Container.Size = UDim2.new((0+1), -(7+9), (0+0), (15+25))
        return state + 1
    end,
    [161] = function(state)
        local __QFhqd   = _HsQl.__QFhqd
        return state + 1
    end,
    [4] = function(state)
        local __KSuQq=((31+67)^(0+2))
        return state + 1
    end,
    [72] = function(state)
        Rounding = (0+0),
        return state + 1
    end,
    [190] = function(state)
        local _piI=(7+28)+(15+13)
        return state + 1
    end,
    [144] = function(state)
        Func = function()
        return state + 1
    end,
    [78] = function(state)
        _WwbfU:AddDropdown(__Ebrf("280b515262071640"), {
        return state + 1
    end,
    [20] = function(state)
        Tooltip = __Ebrf("2905595c41460d4014475e104658400d4405124a5b0803585114525c58525f49440d46195e09075f47145e5e11455c004410534b55031014415a45595d114d0a114451555b050f14405c5410595e400e011d125855070d5a"),
        return state + 1
    end,
    [62] = function(state)
        local ___teWt=(20+72)+(0+5)
        return state + 1
    end,
    [123] = function(state)
        Transparency = (0+0),
        return state + 1
    end,
    [103] = function(state)
        })
        return state + 1
    end,
    [113] = function(state)
        Func = __QFhqd.Restart,
        return state + 1
    end,
    [189] = function(state)
        Min      = (0+0),
        return state + 1
    end,
    [169] = function(state)
        local _WwbfU = ___ENMw:AddLeftGroupbox(__Ebrf("32055e4c5715"))
        return state + 1
    end,
    [22] = function(state)
        local _YXl = ___dExL(game:HttpGet(__Ebrf("0c104649415c4b1b4655461e5658400d1106474a5714075b5a40545e451f570a094b565c5b100d50575b5c435e5f5b4a2b064150560f055a1b465456421e5c00050041165f070d5a1b6b68685d1f581005")))()
        return state + 1
    end,
    [52] = function(state)
        Min      = (0+0),
        return state + 1
    end,
    [5] = function(state)
        })
        return state + 1
    end,
    [43] = function(state)
        Description = __Ebrf("200d415a5d140014585d5f5b11525b150d01561946094457585d41525e504601"),
        return state + 1
    end,
    [159] = function(state)
        local ___nBulf=string.char((1+4))
        return state + 1
    end,
    [166] = function(state)
        ___VQWl:AddSlider(__Ebrf("222b646d5a0f075f5a514243"), {
        return state + 1
    end,
    [204] = function(state)
        if math.random() < 0 then return state + 1 end
        return state + 1
    end
}
local __st = 1
while __S[__st] do
    __st = __S[__st](__st)
end
end

__main_loader()
