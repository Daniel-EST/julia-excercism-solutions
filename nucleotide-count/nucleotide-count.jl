function count_nucleotides(strand::AbstractString)
    strand = uppercase(strand)
    nucleotides = ['A','C','G','T']
    if occursin(r"[^A|G|C|T].+", strand)
        throw(DomainError("Not a valid DNA strand."))
    end
    if isempty(strand)
        Dict(nucleotides .=> 0)
    else
        count = mapreduce(x -> x .== nucleotides, + , strand)
        Dict(zip(nucleotides, count))
    end
end
