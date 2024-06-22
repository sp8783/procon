require 'numo/narray'

n = gets.to_i
field = Numo::Int32.zeros(1502, 1502)

n.times do
  a, b, c, d = gets.split.map(&:to_i)
  field[a, b] += 1
  field[a, d] -= 1
  field[c, b] -= 1
  field[c, d] += 1
end

field = field.cumsum(axis: 0).cumsum(axis: 1)
puts field[field > 0].size
