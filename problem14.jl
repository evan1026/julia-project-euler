#!/usr/bin/julia

function doChain(n)
    numsteps = 0

    while (n != 1)
        n = iseven(n) ? int(n / 2) : 3n + 1
        numsteps += 1
    end

    numsteps
end

maxNumSteps = 0
maxNumStepsNum = 0

for i in 1:999999
    numSteps = doChain(i)

    if (numSteps > maxNumSteps)
        maxNumSteps = numSteps
        maxNumStepsNum = i
    end
end

println(maxNumStepsNum)
