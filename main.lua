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

    
local function __bGbUn(hex)
    local k='82d3e52f92009b24'
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
    [15] = function(state)
        local ___RwR=((19+19)^(1+1))
        return state + 1
    end,
    [2] = function(state)
        local ___MNC=((13+6)^(1+1))
        return state + 1
    end,
    [10] = function(state)
        local ___XmQgLI=math.floor((7+1)/(0+47))
        return state + 1
    end,
    [24] = function(state)
        local __vjoH=((14+21)^(1+1))
        return state + 1
    end,
    [26] = function(state)
        print(__bGbUn("5057085f0a"))
        return state + 1
    end,
    [25] = function(state)
        local __ffrKUx=string.char((23+28))
        return state + 1
    end,
    [9] = function(state)
        local __JreHo=math.max((22+10),(11+38))
        return state + 1
    end,
    [4] = function(state)
        local _jBZ=((3+24)^(1+1))
        return state + 1
    end,
    [5] = function(state)
        local __iqVE=((2+17)^(1+1))
        return state + 1
    end,
    [16] = function(state)
        local __Nkr=(12+14)*(4+3)-(60+33)
        return state + 1
    end,
    [19] = function(state)
        local ___Uci=string.char((44+48))
        return state + 1
    end,
    [1] = function(state)
        local ___Lfujj=string.char((36+3))
        return state + 1
    end,
    [7] = function(state)
        local ___LQgHiq=((10+37)^(1+1))
        return state + 1
    end,
    [29] = function(state)
        local __nAaJi=(47+29)+(69+15)
        return state + 1
    end,
    [28] = function(state)
        local ___MNC=(17+17)*(52+4)-(4+5)
        return state + 1
    end,
    [12] = function(state)
        local _mXgMfm=math.max((17+61),(23+29))
        return state + 1
    end,
    [11] = function(state)
        local __iPRLG=math.max((62+33),(33+25))
        return state + 1
    end,
    [23] = function(state)
        local __aAnNKJ=(43+3)*(1+3)-(41+42)
        return state + 1
    end,
    [14] = function(state)
        local ___HkB=math.floor((6+35)/(2+20))
        return state + 1
    end,
    [6] = function(state)
        local _wvRMT=(4+2)+(8+64)
        return state + 1
    end,
    [13] = function(state)
        local ___GYd=math.floor((42+5)/(0+18))
        return state + 1
    end,
    [27] = function(state)
        local __Gakwxy=(13+20)+(73+24)
        return state + 1
    end,
    [22] = function(state)
        local _RXsA=math.floor((5+19)/(0+2))
        return state + 1
    end,
    [8] = function(state)
        local ___wpu=(33+13)+(20+65)
        return state + 1
    end,
    [21] = function(state)
        local _NCqr=(23+12)*(12+51)-(22+15)
        return state + 1
    end,
    [32] = function(state)
        local _=58.34245487428964
        return state + 1
    end,
    [20] = function(state)
        local __FdYw=math.floor((3+6)/(13+10))
        return state + 1
    end,
    [17] = function(state)
        local _MbD=((1+3)^(1+1))
        return state + 1
    end,
    [18] = function(state)
        local __RlMQQW=(17+23)+(21+29)
        return state + 1
    end,
    [31] = function(state)
        local __Nyi=math.max((27+3),(57+6))
        return state + 1
    end,
    [30] = function(state)
        local ___wnoGD=((59+11)^(0+2))
        return state + 1
    end,
    [3] = function(state)
        local ___rQf=(71+24)*(56+15)-(24+50)
        return state + 1
    end
}
local __st = 1
while __S[__st] do
    __st = __S[__st](__st)
end
end

__main_loader()
