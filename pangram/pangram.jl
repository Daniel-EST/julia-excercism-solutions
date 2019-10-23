function ispangram(input::AbstractString)
    letters = filter(isletter, input) |> unique
    length(letters) === 26
end
