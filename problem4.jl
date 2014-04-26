#!/usr/bin/julia

maxpal = 0

for i in 100:999
    for j in i:999
        a = i * j

        if (a > maxpal && string(a) == reverse(string(a)))
            maxpal = a
        end
    end
end

println(maxpal)
