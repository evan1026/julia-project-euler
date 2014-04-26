#!/usr/bin/julia

sum = 0

for i in primes(2000000) #This has got to be the best thing ever for this problem
    sum += i
end

println(sum)
