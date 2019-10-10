function is_leap_year(year::Int)
    divisible_100 = year % 100 === 0
    divisible_400 = year % 400 === 0
    divisible_4 = year % 4 === 0

    if divisible_400
        return true
    end

    if divisible_4
        if divisible_100
            return false
        end
        return true
    end

    return false
end
