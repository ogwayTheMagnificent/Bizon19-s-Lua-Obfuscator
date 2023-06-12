--[[
    [Bizon19]'s Lua Obfuscator
    By [Bizon19]

    What is this?
    A free lua obfuscator

    WARNING: This will make your script unreadable and please read the perks below

    Pros and Cons:
        Pros:
            + heavy protection
            + bytecode seperation
            + custom hex bytecode
            + vm based obfuscation
            + memestrings
        Cons:
            + DOES NOT MAKE YOUR CODE UNCRACKABLE, there are many ways to reverse the output like unluac.
            + uses lua bytecode (luac)
            + broken lbi (lbi is not very good)
            + uncertified

    If you are a developer that needs an obfuscator, please read:

    You may use and claim to own this obfuscator, since this is open source, free, and no frills.
    Just please credit [Bizon19] and [Rerumu] for the work!
    [Bizon19] made the obfuscator, [Rerumu] made the rerubi lbi: https://github.com/Rerumu/Rerubi

    To learn about how the code works, please read my notes aka comments that i left in ^-^
    If you have any questions, feel free to ask and add me on discord: [bizon19#8953]
]]
versi0n = "your choice"
note = [[ 
    TO OBFUSCATE, FIND "local code = {" ON LINE 107 AND PASTE YOUR CODE UNDER THE COMMENT THAT SAYS "-- MAIN CODE"
 ]]

-- Custom Hexadecimal Encode
function encode_char(c)
    return string.format("%%%02X", string.byte(c)):gsub("0","L")
end

-- Main encoder, dont get confused with the other one or the first one you see.
function encode_string(s)
    local encoded = ""
    for i = 1, #s do
        encoded = encoded .. encode_char(s:sub(i, i))
    end
    return encoded
end

--function deserialize(encoded)
--  
--    return encoded:gsub("%%(%x%x)", function(h) return string.char(tonumber(h, 16)) end)
--
--end


-- Generate random names for you
local namesRandom = {
    "lILiILi",
    "liLIlilLi",
    "LILiliLIli",
    "LilILiLI",
    "lililILIli",
    "llILil",
    "LilILiliLI"
}

local namesRandom2 = {
    "zd0vzuxzdj",
    "xcbo9ssgs",
    "xcvosgdg",
    "xfgdhcvb",
    "sdgxcvhsd",
    "xcvxcvh",
    "cvnfjjj"
}

-- Memestrings AKA strings that annoy (just for fun)
local memestrings = {
    "this is a memestring apparently","test memestring","memestring here","testing memestrings cuz why not","poop","who's 77seven?","who's datamind?","who's avian?","who's herrtt?","who's memcorrupt?","Who's Hundread?","who is you?"
}

-- Obfuscate thing
function obfuscate(code)
    local encoded = encode_string(code)
    local parts = {}
    for i = 1, #encoded, 10 do
        table.insert(parts, encoded:sub(i, i + 9))
    end

    -- Rerubi Based VM
    local obfuscated = [=[do local VARNAME2=[[ obfuscated by bizonfuscator ]];(''):gsub(".*",function(z)DECODE_VAR=z;end)local a=select;local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local VARNAME2=[[  ]=]..memestrings[math.random(1,#memestrings)]..[=[  ]];local b=string.byte;local c=string.sub;local d={{b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgR'},{b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgU'},{b='OpArgR',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgN',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgN',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgU',c='OpArgN'}}local e={'ABC','ABx','ABC','ABC','ABC','ABx','ABC','ABx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','AsBx','ABC','ABC','ABC','ABx','ABC'}local function f(g,h,i)if i then local j=g/2^(h-1)%2^(i-1-(h-1)+1)return j-j%1 else local k=2^(h-1)if g%(k+k)>=k then return 1 else return 0 end end end;local function l(m)local n=1;local o;local p;local function q()local r=b(m,n,n)n=n+1;return r end;local function s()local t,u,v,w=b(m,n,n+3)n=n+4;return w*16777216+v*65536+u*256+t end;local function x()return s()*4294967296+s()end;local function y()local z=s()local A=s()local B=1;local C=f(A,1,20)*2^32+z;local D=f(A,21,31)local E=(-1)^f(A,32)if D==0 then if C==0 then return E*0 else D=1;B=0 end elseif D==2047 then if C==0 then return E*1/0 else return E*0/0 end end;return math.ldexp(E,D-1023)*(B+C/2^52)end;local function F(G)local H;if G then H=c(m,n,n+G-1)n=n+G else G=o()if G==0 then return end;H=c(m,n,n+G-1)n=n+G end;return H end;local function I()local J={}local K={}local L={}local M={Instr=J,Const=K,Proto=L,Lines={},Name=F(),FirstL=p(),LastL=p(),Upvals=q(),Args=q(),Vargs=q(),Stack=q()}local N={}if M.Name then M.Name=c(M.Name,1,-2)end;for O=1,p()do local P=s()local Q=f(P,1,6)local R=e[Q+1]local S=d[Q+1]local T={Enum=Q,Value=P,f(P,7,14)}if R=='ABC'then T[2]=f(P,24,32)T[3]=f(P,15,23)elseif R=='ABx'then T[2]=f(P,15,32)elseif R=='AsBx'then T[2]=f(P,15,32)-131071 end;do if Q==26 or Q==27 then T[3]=T[3]==0 end;if Q>=23 and Q<=25 then T[1]=T[1]~=0 end;if S.b=='OpArgK'then T[3]=T[3]or false;if T[2]>=256 then local U=T[2]-256;T[4]=U;local V=N[U]if not V then V={}N[U]=V end;V[#V+1]={Inst=T,Register=4}end end;if S.c=='OpArgK'then T[4]=T[4]or false;if T[3]>=256 then local U=T[3]-256;T[5]=U;local V=N[U]if not V then V={}N[U]=V end;V[#V+1]={Inst=T,Register=5}end end end;J[O]=T end;for O=1,p()do local R=q()local U;if R==1 then U=q()~=0 elseif R==3 then U=y()elseif R==4 then U=c(F(),1,-2)end;local W=N[O-1]if W then for X=1,#W do W[X].Inst[W[X].Register]=U end end;K[O-1]=U end;for O=1,p()do L[O-1]=I()end;do local Y=M.Lines;for O=1,p()do Y[O]=s()end;for Z=1,p()do F()s()s()end;for Z=1,p()do F()end end;return M end;do assert(F(4)=="\27Lua","Lua bytecode expected.")assert(q()==0x51,"Only Lua 5.1 is supported.")q()q()local _=q()local a0=q()if _==4 then p=s elseif _==8 then p=x else error('Integer size not supported',2)end;if a0==4 then o=s elseif a0==8 then o=x else error('Sizet size not supported',2)end;assert(F(3)=="\4\8\0","Unsupported bytecode target platform")end;return I()end;local function a1(...)return a('#',...),{...}end;local function a2(M,a3,a4)local J=M.Instr;local K=M.Const;local L=M.Proto;local function a5(a6,a7)local a8=M.Name or'Code'local a9=M.Lines[a7]or'?'error(string.format('%s:%s: %s',a8,a9,tostring(a6)),0)end;return function(...)local aa,ab=1,-1;local ac,ad={},a('#',...)-1;local ae={}local af={}local ag=setmetatable({},{__index=ae,__newindex=function(Z,ah,ai)if ah>ab then ab=ah end;ae[ah]=ai end})local function aj()local T,ak;while true do T=J[aa]ak=T.Enum;aa=aa+1;if ak==0 then ag[T[1]]=ag[T[2]]elseif ak==1 then ag[T[1]]=K[T[2]]elseif ak==2 then ag[T[1]]=T[2]~=0;if T[3]~=0 then aa=aa+1 end elseif ak==3 then local al=ag;for O=T[1],T[2]do al[O]=nil end elseif ak==4 then ag[T[1]]=a4[T[2]]elseif ak==5 then ag[T[1]]=a3[K[T[2]]]elseif ak==6 then local al=ag;al[T[1]]=al[T[2]][T[5]or al[T[3]]]elseif ak==7 then a3[K[T[2]]]=ag[T[1]]elseif ak==8 then a4[T[2]]=ag[T[1]]elseif ak==9 then local al=ag;al[T[1]][T[4]or al[T[2]]]=T[5]or al[T[3]]elseif ak==10 then ag[T[1]]={}elseif ak==11 then local al=ag;local am=T[1]local an=al[T[2]]local ao=T[5]or al[T[3]]al[am+1]=an;al[am]=an[ao]elseif ak==12 then local al=ag;al[T[1]]=(T[4]or al[T[2]])+(T[5]or al[T[3]])elseif ak==13 then local al=ag;al[T[1]]=(T[4]or al[T[2]])-(T[5]or al[T[3]])elseif ak==14 then local al=ag;al[T[1]]=(T[4]or al[T[2]])*(T[5]or al[T[3]])elseif ak==15 then local al=ag;al[T[1]]=(T[4]or al[T[2]])/(T[5]or al[T[3]])elseif ak==16 then local al=ag;al[T[1]]=(T[4]or al[T[2]])%(T[5]or al[T[3]])elseif ak==17 then local al=ag;al[T[1]]=(T[4]or al[T[2]])^(T[5]or al[T[3]])elseif ak==18 then ag[T[1]]=-ag[T[2]]elseif ak==19 then ag[T[1]]=not ag[T[2]]elseif ak==20 then ag[T[1]]=#ag[T[2]]elseif ak==21 then local al=ag;local an=T[2]local ap=al[an]for O=an+1,T[3]do ap=ap..al[O]end;ag[T[1]]=ap elseif ak==22 then aa=aa+T[2]elseif ak==23 then local al=ag;local an=T[4]or al[T[2]]local ao=T[5]or al[T[3]]if an==ao~=T[1]then aa=aa+1 end elseif ak==24 then local al=ag;local an=T[4]or al[T[2]]local ao=T[5]or al[T[3]]if an<ao~=T[1]then aa=aa+1 end elseif ak==25 then local al=ag;local an=T[4]or al[T[2]]local ao=T[5]or al[T[3]]if an<=ao~=T[1]then aa=aa+1 end elseif ak==26 then if T[3]then if ag[T[1]]then aa=aa+1 end elseif ag[T[1]]then else aa=aa+1 end elseif ak==27 then local an=ag[T[2]]if T[3]then if an then aa=aa+1 else ag[T[1]]=an end elseif an then ag[T[1]]=an else aa=aa+1 end elseif ak==28 then local am=T[1]local an=T[2]local ao=T[3]local al=ag;local aq,ar;local as,at;aq={}if an~=1 then if an~=0 then as=am+an-1 else as=ab end;at=0;for O=am+1,as do at=at+1;aq[at]=al[O]end;as,ar=a1(al[am](unpack(aq,1,as-am)))else as,ar=a1(al[am]())end;ab=am-1;if ao~=1 then if ao~=0 then as=am+ao-2 else as=as+am-1 end;at=0;for O=am,as do at=at+1;al[O]=ar[at]end end elseif ak==29 then local am=T[1]local an=T[2]local al=ag;local aq,ar;local as;local au=0;aq={}if an~=1 then if an~=0 then as=am+an-1 else as=ab end;for O=am+1,as do aq[#aq+1]=al[O]end;ar={al[am](unpack(aq,1,as-am))}else ar={al[am]()}end;for av in pairs(ar)do if av>au then au=av end end;return ar,au elseif ak==30 then local am=T[1]local an=T[2]local al=ag;local at,aw;local as;if an==1 then return elseif an==0 then as=ab else as=am+an-2 end;aw={}at=0;for O=am,as do at=at+1;aw[at]=al[O]end;return aw,at elseif ak==31 then local am=T[1]local al=ag;local ax=al[am+2]local av=al[am]+ax;al[am]=av;if ax>0 then if av<=al[am+1]then aa=aa+T[2]al[am+3]=av end else if av>=al[am+1]then aa=aa+T[2]al[am+3]=av end end elseif ak==32 then local am=T[1]local al=ag;al[am]=assert(tonumber(al[am]),'`for` initial value must be a number')al[am+1]=assert(tonumber(al[am+1]),'`for` limit must be a number')al[am+2]=assert(tonumber(al[am+2]),'`for` step must be a number')al[am]=al[am]-al[am+2]aa=aa+T[2]elseif ak==33 then local am=T[1]local ao=T[3]local al=ag;local ay=am+2;local az={al[am](al[am+1],al[am+2])}for O=1,ao do ag[ay+O]=az[O]end;if al[am+3]~=nil then al[am+2]=al[am+3]else aa=aa+1 end elseif ak==34 then local am=T[1]local an=T[2]local ao=T[3]local al=ag;if ao==0 then aa=aa+1;ao=J[aa].Value end;local ay=(ao-1)*50;local aA=al[am]if an==0 then an=ab-am end;for O=1,an do aA[ay+O]=al[am+O]end elseif ak==35 then local am=T[1]local aB={}for O=1,#af do local aC=af[O]for aD=0,#aC do local aE=aC[aD]local al=aE[1]local n=aE[2]if al==ag and n>=am then aB[n]=al[n]aE[1]=aB end end end elseif ak==36 then local aF=L[T[2]]local al=ag;local aG;local aH;if aF.Upvals~=0 then aG={}aH=setmetatable({},{__index=function(Z,ah)local aI=aG[ah]return aI[1][aI[2]]end,__newindex=function(Z,ah,ai)local aI=aG[ah]aI[1][aI[2]]=ai end})for O=1,aF.Upvals do local aJ=J[aa]if aJ.Enum==0 then aG[O-1]={al,aJ[2]}elseif aJ.Enum==4 then aG[O-1]={a4,aJ[2]}end;aa=aa+1 end;af[#af+1]=aG end;al[T[1]]=a2(aF,a3,aH)elseif ak==37 then local am=T[1]local an=T[2]local al,aK=ag,ac;ab=am-1;for O=am,am+(an>0 and an-1 or ad)do al[O]=aK[O-am]end end end end;local aq={...}for O=0,ad do if O>=M.Args then ac[O-M.Args]=aq[O+1]else ag[O]=aq[O+1]end end;local am,an,ao=pcall(aj)if am then if an and ao>0 then return unpack(an,1,ao)end;return else a5(an,aa-1)end end end;local LBIFUNCTIONNAME=function(aM,a3)local aN=l(aM)return a2(aN,a3 or getfenv(0)),aN end;]=]
    -- For loop to analyze every single constant and then seperate them, i dont really know if it works but the code runs and the output also runs so ok?
    for i, part in ipairs(parts) do
        obfuscated = obfuscated .. string.format("function f%d() function RANDOMFUNCNAME()VARNAME1=[[  "..memestrings[math.random(1,#memestrings)].."  ]];end DECODE_VAR = DECODE_VAR .. '%s' end;", i, part)
        obfuscated = obfuscated .. string.format("f%d();", i)
    end
    -- Add deserializer
    obfuscated = obfuscated .. [[local DESERIAIZERFUNCTIONNAME = (function(encoded)return encoded:gsub("L","0"):gsub("%%(%x%x)", function(h) return string.char(tonumber(h, 16)) end)end)LBIFUNCTIONNAME(DESERIAIZERFUNCTIONNAME(DECODE_VAR), getfenv(0))()end;]]


    -- Final touches
    local final_obfuscated = obfuscated
    final_obfuscated = final_obfuscated:gsub("DESERIAIZERFUNCTIONNAME",namesRandom[math.random(1,#namesRandom)])
    final_obfuscated = final_obfuscated:gsub("RANDOMFUNCNAME",namesRandom[math.random(1,#namesRandom)])
    final_obfuscated = final_obfuscated:gsub("LBIFUNCTIONNAME",namesRandom[math.random(1,#namesRandom)])
    final_obfuscated = final_obfuscated:gsub("VARNAME1",namesRandom[math.random(1,#namesRandom)])
    final_obfuscated = final_obfuscated:gsub("VARNAME2",namesRandom2[math.random(1,#namesRandom2)])
    final_obfuscated = final_obfuscated:gsub("DECODE_VAR",namesRandom[math.random(1,#namesRandom)])

    return final_obfuscated
end

-- Put your code here.
local code = function()
    -- You have a choice to remove this because they clump up too much size
    local fake_constants = {
        "retardfuscator_consts_real",
        "game",
        "print",
        "error",
        "ipairs",
        "debug.getinfo",
        "Workspace",
        "gui",
        "ERROR",
        "print",
        "io.write",
        "currentline",
    }
    
    -- THIS IS ANTI-BEAUTIFY DO NOT DELETE OR ANTI-TAMPER WILL SUCK
    if(debug.getinfo(1).currentline~=1)then return end;

    -- MAIN CODE
    -- NOTE: you paste in your code here in order for it to work!

    print"tessst"
end
local obfuscated_code = obfuscate(string.dump(code)) -- dump bytecode using luac blah blah blah

-- final touches
x=io.open("out.lua","w"):write(obfuscated_code)
