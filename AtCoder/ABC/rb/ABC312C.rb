n, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

puts (A + B.map(&:succ)).sort[m-1]
