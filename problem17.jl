#!/usr/bin/julia

numAsWords = [1=>3,
              2=>3,
              3=>5,
              4=>4,
              5=>4,
              6=>3,
              7=>5,
              8=>5,
              9=>4,
              10=>3,
              11=>6,
              12=>6,
              13=>8,
              14=>8,
              15=>7,
              16=>7,
              17=>9,
              18=>8,
              19=>8,
              20=>6,
              30=>6,
              40=>5,
              50=>5,
              60=>5,
              70=>7,
              80=>6,
              90=>6]

function numLetters(num)
    if (num == 1000)
        return 11 #Because I know there's only one number with a thousands place and it's easier to just account for it than to do an actual calculation
    end

    letterSum = 0
    tens = num % 100 - num % 10
    ones = num % 10

    if (num % 100 < 20)
        letterSum += get(numAsWords, num % 100, 0)
    else
        letterSum += get(numAsWords, tens, 0) + get(numAsWords, ones, 0)
    end

    if (num >= 100)
        letterSum += get(numAsWords, div(num % 1000, 100), 0)
        if (tens != 0 || ones != 0)
            letterSum += 10 #length of "and" and "hundred" combined
        else
            letterSum += 7 #length of "hundred"
        end
    end
    return letterSum
end

letterCount = 0

for i in 1:1000
    letterCount += numLetters(i)
end

println(letterCount)
