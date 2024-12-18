
var 
    v = 3
    c = 0


proc isp(n:int) :bool =
    var 
        r = 2
        o = 0
    while r <= n and o < 2  :
        case n mod r == 0
        of true : 
            inc o 
            inc r 
        else : inc r
    return o == 1

while c != 10000 :
    case v.isp()
    of true :
        inc c 
        inc v 
    else : inc v

echo v-1