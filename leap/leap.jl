function is_leap_year(year::Int)
    divisible_100 = year % 100 === 0
    divisible_400 = year % 400 === 0
    divisible_4 = year % 4 === 0

    if divisible_100
        if divisible_400
            return true
        else
            return false
        end
    end

    if divisible_4
        return true
    end

    return false
end
