import math

var 
    master:seq[int] = @[1,2]
    run = 0
    evenroom:seq[int] = @[]

while master[^1] < 4_000_000 :
    master.add(master[^1] + master[run])
    inc run

master.delete(run+1) #remove the last seq that more than 4m.

for i in master :
    if i mod 2 == 0 :
        evenroom.add(i)
    else : continue

echo evenroom.sum()
