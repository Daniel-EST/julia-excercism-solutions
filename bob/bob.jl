function bob(stimulus::AbstractString)
    stimulus = filter(!isspace, stimulus)

    isquestion = occursin(r"\?$", stimulus)

    issilence = length(stimulus) === 0
    lenlower = length(filter(islowercase, stimulus))

    isphrase = length(filter(isuppercase, stimulus))
    isyell = lenlower === 0 && isphrase > 0

    if issilence
        return "Fine. Be that way!"
    end

    if isyell && isquestion
        return "Calm down, I know what I'm doing!"

    elseif isyell
        return "Whoa, chill out!"

    elseif isquestion
        return "Sure."
    end

    return "Whatever."

end
