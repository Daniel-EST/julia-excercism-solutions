function wordcount(sentence::AbstractString)
      if !occursin(r"\w+", sentence)
            return Dict()
      end

      sentence = lowercase(sentence)
      tokenized = eachmatch(r"(\w+'\w+|\w+)", sentence) |>
            collect |>
            x -> map(y -> y.match, x)

      words = unique(tokenized)
      mapreduce(x -> x .== words, +, tokenized) |>
            x -> Dict(words .=> x)
end
