#!/usr/bin/julia

println(sum(map((x) -> int(string(x)), collect(string(factorial(BigInt(100)))))))
