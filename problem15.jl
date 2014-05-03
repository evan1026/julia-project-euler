#!/usr/bin/julia

knownPathLengths = fill(-1, (21,21))

function pathsToEnd(x,y)
    if (knownPathLengths[x + 1, y + 1] != -1)
        return knownPathLengths[x + 1, y + 1]
    end

    paths = 0
    if (x < 20)
        paths += pathsToEnd(x + 1, y)
    end
    if (y < 20)
        paths += pathsToEnd(x, y + 1)
    end
    if (x == 20 && y == 20)
        paths = 1
    end
    knownPathLengths[x + 1, y + 1] = paths
    return paths
end

println(pathsToEnd(0,0))
