#!/usr/bin/julia

num = BigInt(2) ^ 1000
sum = 0

while(num > 0)
    sum += num % 10
    num = div(num, 10)
end

println(sum)
