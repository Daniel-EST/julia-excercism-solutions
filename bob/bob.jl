function bob(stimulus::AbstractString)
    stimulus = filter(!isspace, stimulus)

    isquestion = occursin(r"\?$", stimulus)

    issilence = length(stimulus) === 0

    numberupper = length(filter(islowercase, stimulus))
    isyell =  numberupper === 0

    if issilence
        return "Fine. Be that way!"
    end

    if isyell & isquestion
        return "Calm down, I know what I'm doing!"
    end

    if isyell
        return "Whoa, chill out!"
    end

    if isquestion
        return "Sure."
    end

    return "Whatever"

end
