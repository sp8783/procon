require "numo/narray"

h, w = gets.split.map(&:to_i)
a = Array.new(h) { gets.split.map(&:to_i) }
a = Numo::Int32[*a]

column_sum = a.sum(axis: 0).reshape(1, w)
row_sum = a.sum(axis: 1).reshape(h, 1)

ans = Numo::Int32.zeros(h, w)
ans = ans + column_sum + row_sum - a

puts ans.to_a.map { |row| row.join(" ") }
