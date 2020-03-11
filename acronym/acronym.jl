function acronym(phrase::AbstractString)
    replace(phrase, "-" => " ") |>
        x -> filter(!ispunct, x) |>
        split |>
        x -> map(y -> uppercase(y[1]), x) |>
        join
end
