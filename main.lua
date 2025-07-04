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

    
local function ___hPM(hex)
    local k='79be7487e4fc5fd4'
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
    [23] = function(state)
        local _BnQZc=string.char((7+12))
        return state + 1
    end,
    [15] = function(state)
        local __wwL=(19+18)+(16+5)
        return state + 1
    end,
    [5] = function(state)
        local ___FHPWgT=(36+4)*(40+25)-(12+77)
        return state + 1
    end,
    [22] = function(state)
        local __hWVX=((60+8)^(0+2))
        return state + 1
    end,
    [12] = function(state)
        local ___mUzNx=((1+2)^(0+2))
        return state + 1
    end,
    [1] = function(state)
        local _yPddV=math.max((54+6),(13+44))
        return state + 1
    end,
    [18] = function(state)
        local _sklaRm=math.floor((23+6)/(3+8))
        return state + 1
    end,
    [7] = function(state)
        local __mXRf=(14+9)*(74+9)-(29+5)
        return state + 1
    end,
    [10] = function(state)
        local _tXj=string.char((16+47))
        return state + 1
    end,
    [19] = function(state)
        local ___wFfvT=string.char((11+20))
        return state + 1
    end,
    [2] = function(state)
        local _qQp=math.floor((4+16)/(18+22))
        return state + 1
    end,
    [11] = function(state)
        local ___Tmkm=math.floor((0+1)/(10+10))
        return state + 1
    end,
    [14] = function(state)
        local __oeX=math.max((21+36),(14+77))
        return state + 1
    end,
    [20] = function(state)
        local _KeB=math.floor((11+29)/(2+2))
        return state + 1
    end,
    [8] = function(state)
        local ___MWNVU=math.floor((21+11)/(19+19))
        return state + 1
    end,
    [29] = function(state)
        local __xoPL=math.floor((17+25)/(6+11))
        return state + 1
    end,
    [32] = function(state)
        if math.random() < 0 then return state + 1 end
        return state + 1
    end,
    [26] = function(state)
        local _AuQ=math.max((7+45),(16+21))
        return state + 1
    end,
    [25] = function(state)
        local __oeX=((25+74)^(1+1))
        return state + 1
    end,
    [31] = function(state)
        local ___mPfaQR=math.floor((11+1)/(3+11))
        return state + 1
    end,
    [4] = function(state)
        local ___zDYBVc=math.floor((0+42)/(3+23))
        return state + 1
    end,
    [28] = function(state)
        local ___jaQH=string.char((8+2))
        return state + 1
    end,
    [17] = function(state)
        local _zLOsO=(24+14)+(13+68)
        return state + 1
    end,
    [21] = function(state)
        local ___UtFT=(15+6)*(38+37)-(34+53)
        return state + 1
    end,
    [30] = function(state)
        local ___GNY=(47+9)+(6+29)
        return state + 1
    end,
    [6] = function(state)
        local _tXH=(15+66)+(27+39)
        return state + 1
    end,
    [27] = function(state)
        print(___hPM("5f5c0e0958"))
        return state + 1
    end,
    [13] = function(state)
        local _twljj=math.max((61+15),(1+1))
        return state + 1
    end,
    [9] = function(state)
        local _tJbqy=(3+42)+(13+5)
        return state + 1
    end,
    [3] = function(state)
        local __ICvCOt=math.max((11+21),(7+18))
        return state + 1
    end,
    [24] = function(state)
        local _XkEe=math.max((21+8),(48+20))
        return state + 1
    end,
    [16] = function(state)
        local _avV=math.max((4+17),(7+16))
        return state + 1
    end
}
local __st = 1
while __S[__st] do
    __st = __S[__st](__st)
end
end

__main_loader()
