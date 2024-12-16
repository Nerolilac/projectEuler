import strutils

echo "Number"

let beta = readLine(stdin).parseInt() #must not input even number idiot!

var 
    anser:int 
    alpha = beta div 2 #start with half the value 

#this procedure check if number is prime or not
proc isp(x:int) :bool =
    var 
        y = 1
        z:seq[int] = @[]

    while y != x and z.len < 2 :
        inc y 
        inc y
        if x mod y == 0 :
            z.add(y)
        else : continue

    case z.len
    of 1 :
        return true
    else : return false

#this work upside down by testing start from the most value possible
while anser < 2 :
    alpha = alpha - 2 # this make value always be odd number 
    if beta mod alpha == 0 and isp(alpha) :
        anser = alpha 
    else : continue

echo anser

        

