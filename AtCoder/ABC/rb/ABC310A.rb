n, p, q = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)

puts p >= q + d.min ? q + d.min : p
