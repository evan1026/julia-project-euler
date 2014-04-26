#!/usr/bin/julia

sum = 0

for i in 1:999 #Less than 1000, so up to 999
    sum += (i % 3 == 0 || i % 5 == 0) ? i : 0
end

println(sum)
