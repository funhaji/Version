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

    local __loadstring = rawget(_G, "loadstring")
    if type(__loadstring) == "function" then
        local original_loadstring = loadstring
        if __loadstring ~= original_loadstring then
            __reportTamper("Loadstring tampering detected")
        end
    end

    -- New: Check for getloadedfile
    local __getloadedfile = rawget(_G, "getloadedfile")
    if __getloadedfile ~= nil then
        __reportTamper("getloadedfile detected")
    end

    
local function _mvmPCM(hex)
    local k='739eb80c02633091'
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
    [17] = function(state)
        local _fdez=math.floor((6+4)/(6+9))
        return state + 1
    end,
    [4] = function(state)
        local _gSc=(49+50)+(0+1)
        return state + 1
    end,
    [8] = function(state)
        local ___pwLsFs=(4+93)*(2+65)-(64+26)
        return state + 1
    end,
    [24] = function(state)
        local _NTp=math.floor((2+37)/(2+4))
        return state + 1
    end,
    [15] = function(state)
        local _WgmCW=math.max((16+56),(26+53))
        return state + 1
    end,
    [1] = function(state)
        local ___OIp=(55+8)+(55+42)
        return state + 1
    end,
    [29] = function(state)
        local _dhr=math.max((67+5),(8+73))
        return state + 1
    end,
    [26] = function(state)
        local _gln=(19+64)+(43+20)
        return state + 1
    end,
    [2] = function(state)
        local ___WcJDM=(51+6)*(11+70)-(17+27)
        return state + 1
    end,
    [23] = function(state)
        local _EzbTY=(15+44)+(1+4)
        return state + 1
    end,
    [5] = function(state)
        local _jPr=math.max((31+28),(2+3))
        return state + 1
    end,
    [20] = function(state)
        local _vtmSv=math.floor((14+24)/(13+26))
        return state + 1
    end,
    [7] = function(state)
        local ___IaryY=math.max((38+56),(4+6))
        return state + 1
    end,
    [3] = function(state)
        local __ClvvDF=string.char((39+33))
        return state + 1
    end,
    [19] = function(state)
        local _EYFgGx=math.floor((23+17)/(16+5))
        return state + 1
    end,
    [22] = function(state)
        local __AMX=(2+18)+(75+17)
        return state + 1
    end,
    [12] = function(state)
        local __bCu=(51+14)*(11+64)-(46+22)
        return state + 1
    end,
    [31] = function(state)
        local __sae=math.floor((30+18)/(44+3))
        return state + 1
    end,
    [27] = function(state)
        local ___zoLHv=((16+49)^(0+2))
        return state + 1
    end,
    [21] = function(state)
        local _KpUAVp=math.floor((1+3)/(4+5))
        return state + 1
    end,
    [28] = function(state)
        local _Zvo=math.max((3+14),(83+11))
        return state + 1
    end,
    [13] = function(state)
        local _EzbTY=math.floor((4+3)/(6+18))
        return state + 1
    end,
    [25] = function(state)
        local __RXHL=math.max((3+2),(10+4))
        return state + 1
    end,
    [18] = function(state)
        local _gwxap=math.floor((9+4)/(0+2))
        return state + 1
    end,
    [9] = function(state)
        local _momhU=string.char((38+6))
        return state + 1
    end,
    [14] = function(state)
        local ___VNwW=(2+43)*(45+23)-(32+3)
        return state + 1
    end,
    [11] = function(state)
        local __YPm=math.floor((20+2)/(3+22))
        return state + 1
    end,
    [16] = function(state)
        local ___RduzP=math.max((23+57),(16+40))
        return state + 1
    end,
    [10] = function(state)
        local ___GfI=(77+2)+(8+2)
        return state + 1
    end,
    [6] = function(state)
        print(_mvmPCM("5f5655090d"))
        return state + 1
    end,
    [30] = function(state)
        local ___eMEOM=(2+84)+(3+19)
        return state + 1
    end,
    [32] = function(state)
        local _=61.27043008738988
        return state + 1
    end
}
local __st = 1
while __S[__st] do
    __st = __S[__st](__st)
end
end

__main_loader()
