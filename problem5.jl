#!/usr/bin/julia

nums = collect(1:20)

product = 1

for i in 1:20
    product *= nums[i]

    for j in (i+1):20 #i+1 because otherwise we start by dividing nums[i] by itself, 
                      #causing it to be 1 for the rest of the loop
        if (nums[j] % nums[i] == 0)
            nums[j] /= nums[i]
        end
    end
end

println(product)
