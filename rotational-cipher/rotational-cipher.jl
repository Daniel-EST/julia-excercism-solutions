function rotate(rotations::Int, input)
    if rotations < 0 || rotations > 26
        throw(ArgumentError("Rotations has to be greater than zero and lower or equal to 26."))
    end

    rotated = map(input) do character
        codefied = character + rotations
        if islowercase(character)
            'a' <= codefied <= 'z' ? codefied : (codefied - 'z') + 'a' - 1
        elseif isuppercase(character)
            'A' <= codefied <= 'Z' ? codefied : (codefied - 'Z') + 'A' - 1
        else
            character
        end
    end

    typeof(input) == Char ? rotated[1] : rotated
end

for i in 1:26
    quote
        macro $(Symbol("R$(i)_str"))(input)
            rotate($(i), input)
        end
    end |> eval
end
