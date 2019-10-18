function distance(s1::AbstractString, s2::AbstractString, hamming_dist::Int=0)
    if length(s1) !== length(s2)
        throw(ArgumentError("DNA Strands should have the same lenght"))
    end

    strandlen = length(s1)

    if strandlen  === 0
        return hamming_dist
    end

    s1_popped = s1[2:strandlen]
    s2_popped = s2[2:strandlen]

    if s1[1] === s2[1]
        return distance(s1_popped, s2_popped, hamming_dist)
    else
        return distance(s1_popped, s2_popped, hamming_dist + 1)
    end
end
