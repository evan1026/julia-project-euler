#!/usr/bin/julia

MONDAY    = 6
TUESDAY   = 0
WEDNESDAY = 1
THURSDAY  = 2
FRIDAY    = 3
SATURDAY  = 4
SUNDAY    = 5

JANUARY   = 1
FEBRUARY  = 2
MARCH     = 3
APRIL     = 4
MAY       = 5
JUNE      = 6
JULY      = 7
AUGUST    = 8
SEPTEMBER = 9
OCTOBER   = 10
NOVEMBER  = 11
DECEMBER  = 12

currDay    = 0
currDOM    = 1
currMonth  = 1
currYear   = 1901
stuffCount = 0

function isLeapYear(year)
    if (year % 4 != 0)
        return false
    end

    if (year % 100 == 0 && year % 400 != 0)
        return false
    end

    return true
end

function numDays(month, year)
    if (month == SEPTEMBER || month == APRIL || month == JUNE || month == NOVEMBER)
        return 30
    elseif (month == FEBRUARY)
        if (isLeapYear(year))
            return 29
        else
            return 28
        end
    else
        return 31
    end
end

while (currDay < 36525) #number of days we're looking at
    currDay += 1
    currDOM += 1

    if (currDOM > numDays(currMonth, currYear))
        currDOM = 1
        currMonth += 1

        if (currMonth > 12)
            currMonth = 0
            currYear += 1
        end
    end

    if (currDOM == 1 && currDay % 7 == SUNDAY)
        stuffCount += 1
    end
end

println(stuffCount)
