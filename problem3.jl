#!/usr/bin/julia

factors = factor(600851475143) #a dictionary

maxfactor = 0

for factor in keys(factors)
    if (factor > maxfactor) 
        maxfactor = factor
    end
end

println(maxfactor)
