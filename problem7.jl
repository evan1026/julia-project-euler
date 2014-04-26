#!/usr/bin/julia

primeCounter = 0
counter      = 0

while (primeCounter < 10001)
    counter += 1
    if (isprime(counter))
        primeCounter += 1
    end
end

println(counter)
