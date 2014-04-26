#!/usr/bin/julia

for a in 1:1000
    for b in a:(1000 - a) #Because if a + b > 1000, why bother?
        c = hypot(a,b)

        if (int(c) != c)
            continue
        end

        if (a + b + c == 1000)
            println(int(a * b * c))
            quit()
        end
    end
end
