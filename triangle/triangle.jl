function is_equilateral(sides)
    sidezero = any(map(iszero, sides))
    invalidtriangle = sidezero
    invalidtriangle ? false : mapreduce(x -> x === sides[1], *, sides)
end

function is_isosceles(sides)
    a = sides[1]
    b = sides[2]
    c = sides[3]
    sidezero = any(map(iszero, sides))
    invalid_side_size = a >= b + c || -a >= c - b || -a >= b -c
    validtriangle = !sidezero && !invalid_side_size
    if validtriangle
        equalsides_1 = mapreduce(x -> x === sides[1], + , sides)
        equalsides_2 = mapreduce(x -> x === sides[2], + , sides)
        sum(equalsides_1) === 2 || sum(equalsides_2) === 2
    else
        false
    end
end

function is_scalene(sides)
    a = sides[1]
    b = sides[2]
    c = sides[3]
    sidezero = any(map(iszero, sides))
    invalid_side_size = a >= b + c || -a >= c - b || -a >= b -c
    validtriangle = !sidezero && !invalid_side_size
    if validtriangle
        equalsides_1 = mapreduce(x -> x === sides[1], + , sides)
        equalsides_2 = mapreduce(x -> x === sides[2], + , sides)
        sum(equalsides_1) === 1 && sum(equalsides_2) === 1
    else
        false
    end
end
