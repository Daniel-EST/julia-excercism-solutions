"Square the sum of the first `n` positive integers"
square_of_sum(n::Int) = ((n * (n + 1))/2) ^ 2 |> Int

"Sum the squares of the first `n` positive integers"
sum_of_squares(n::Int) = (n * (n + 1) * (2 * n + 1)) / 6 |> Int

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
difference(n::Int) = square_of_sum(n) - sum_of_squares(n)
