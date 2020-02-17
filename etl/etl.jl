function transform(input::AbstractDict)
    all_zips = []
    for (index, value) in pairs(input)
        zips = map(x -> zip(lowercase(x), index), input[index])
        for zip in zips
            append!(all_zips, zip)
        end
    end
    Dict(all_zips)
end
