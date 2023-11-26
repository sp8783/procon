n = gets.to_i
P = gets.split.map(&:to_i)

puts n == 1 ? 0 : [P[1...n].max - P[0] + 1, 0].max
