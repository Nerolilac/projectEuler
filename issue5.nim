var 
    x = 2 #number
    y = 2 #divider
    z = 0 #counter

while z != 19 :
    case x mod y == 0 
    of true :
        inc z
        inc y
    else :
        z = 0
        y = 2
        x = x+2 #result always be even number

echo x
