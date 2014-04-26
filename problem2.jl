#!/usr/bin/julia

function fibProducer(max = 4000000)
    i1 = 1
    i2 = 2

    produce(i1)

    while(i2 < max)
        produce(i2)
        
        i2 = i2 + i1
        i1 = i2 - i1
    end
end

sum = 0

for x in Task(fibProducer)
    sum += iseven(x) ? x : 0
end

println(sum)
