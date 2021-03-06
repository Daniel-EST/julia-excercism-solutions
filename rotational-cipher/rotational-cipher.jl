function rotate(n, char::AbstractChar)
    if n < 0 || n > 26
        throw(ArgumentError("Rotations has to be greater than zero and lower or equal to 26."))
    end

    if islowercase(char)
        'a' + (char + n - 'a') % 26
    elseif isuppercase(char)
        'A' + (char + n - 'A') % 26
    else
        char
    end
end

function rotate(n, str::AbstractString)
    map(c -> rotate(n, c), str)
end

for i in 1:26
    quote
        macro $(Symbol("R$(i)_str"))(input)
            rotate($(i), input)
        end
    end |> eval
end
