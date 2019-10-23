function detect_anagrams(subject::AbstractString, candidates::AbstractArray)
    subject = lowercase(subject)
    filter!(x -> lowercase(x) !== subject, candidates)
    subject_splitted = subject |> collect |> sort

    candidates_splitted = map(candidates) do candidate
        candidate |> lowercase |> collect |> sort
    end

    anagrams = [subject_splitted] .== candidates_splitted
    candidates[anagrams]
end
