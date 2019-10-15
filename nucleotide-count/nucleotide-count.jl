function count_nucleotides(strand::AbstractString)
    strand = uppercase(strand)
    if occursin(r"[^A|G|C|T].+", strand)
        throw(DomainError("Not a valid DNA strand."))
    end
    if isempty(strand)
        Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    else
        a = mapreduce(x -> x === 'A' ? 1 : 0, + , strand)
        c = mapreduce(x -> x === 'C' ? 1 : 0, + , strand)
        g = mapreduce(x -> x === 'G' ? 1 : 0, + , strand)
        t = mapreduce(x -> x === 'T' ? 1 : 0, + , strand)
        Dict('A' => a, 'C' => c, 'G' => g, 'T' => t)
    end
end
