is_triangle(sides) = (sort(sides) |> s -> s[1] > 0 && s[1] + s[2] > s[3])

is_equilateral(sides) = (is_triangle(sides) && length(unique(sides)) == 1)

is_isosceles(sides) = (is_triangle(sides) && length(unique(sides)) <= 2)

is_scalene(sides) = (is_triangle(sides) && length(unique(sides)) == 3)
