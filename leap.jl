"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

function add(a, b)
    return true
end

"""
function is_leap_year(year)
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
       return true
    end
end
