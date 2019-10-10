function clean(phone_number)
    number = filter(isdigit, phone_number)

    if length(number) > 11
        return nothing
    end
    
    m = match(r"^1?([2-9]{1}\d{2}[2-9]{1}\d{6}$)", number)
    m == nothing ? m : m.captures[1]
end
