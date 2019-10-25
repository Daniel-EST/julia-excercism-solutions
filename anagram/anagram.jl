split_sort(string::AbstractString) = string |> lowercase |> collect |> sort

function detect_anagrams(subject::AbstractString, candidates::AbstractArray)
    filter!(x -> lowercase(x) !== lowercase(subject), candidates)

    subject_splitted = split_sort(subject)
    candidates_splitted = map(split_sort, candidates)

    anagrams = [subject_splitted] .== candidates_splitted
    candidates[anagrams]
end
