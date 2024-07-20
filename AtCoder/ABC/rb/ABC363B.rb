N, T, P = gets.split.map(&:to_i)
L = gets.split.map(&:to_i).sort.reverse

ans = [T - L[P-1], 0].max
puts ans
