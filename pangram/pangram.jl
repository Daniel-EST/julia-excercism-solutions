function ispangram(input::AbstractString)
    alphabet = 'a':'z'
    input_letters = filter(x -> x in alphabet, lowercase(input)) |> unique
    issetequal(alphabet, input_letters)
end
