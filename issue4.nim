import strutils

proc isre(n:int) :bool =
    let t = intToStr(n)
    var 
        run = 1
        re:string
    for i in t :
        re.add(t[^run])
        inc run
    return t == re

var 
    xa:int
    xb:int
    anser:int
    a = 100
    b = 100

while a != 1000 :
    case b <= 999 
    of true :
        var c = a * b
        case c.isre() and c >= anser
        of true : 
            anser = c
            xa = a 
            xb = b 
            inc b
        else : inc b
    else : 
        b = 100
        inc a

echo anser
echo xa , "  " , xb