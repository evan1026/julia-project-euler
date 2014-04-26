#!/usr/bin/julia

sum       = 0
squareSum = 0

for i in 1:100
    sum       += i
    squareSum += i^2
end

println(sum ^ 2 - squareSum)
