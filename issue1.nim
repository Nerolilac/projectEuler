import math

proc mtpa3b5(n:int) :seq[int] =
    var  max = 1
    while max != n :
        if max mod 5 == 0 :
            result.add(max)
            inc max
        elif max mod 3 == 0 :
            result.add(max)
            inc max
        else : inc max
    return 

let anser:seq[int] = 1000.mtpa3b5()

echo  anser.sum()



        



