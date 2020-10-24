function raindrops(number::Int)
    divisors = [3, 5, 7]
    sounds = ["Pling", "Plang", "Plong"]
    convertion = Dict(zip(divisors, sounds))

    rain = mapreduce(x -> number % x == 0 ? convertion[x] : "", *, divisors)
    rain == "" ? string(number) : rain
end
