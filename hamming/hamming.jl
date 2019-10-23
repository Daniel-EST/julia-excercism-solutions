function distance(s1::AbstractString, s2::AbstractString)
    if length(s1) !== length(s2)
        throw(ArgumentError("DNA Strands should have the same length"))
    end

    hamming_dist = 0

    for letter_s1 in s1
        letter_s2 = s2[1]
        s2 = s2[2:length(s2)]
        letter_s1 === letter_s2 ? hamming_dist : hamming_dist += 1
    end

    return hamming_dist
end
