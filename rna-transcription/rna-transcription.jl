function to_rna(dna::AbstractString)
    dna_nucleotides = ['A', 'G', 'C', 'T']
    rna_nucleotides = ['U', 'C', 'G', 'A']
    transcription = Dict(dna_nucleotides .=> rna_nucleotides)
    map(dna) do x
        try
            transcription[x]
        catch
            throw(ErrorException("Invalid DNA strand."))
        end
    end
end
