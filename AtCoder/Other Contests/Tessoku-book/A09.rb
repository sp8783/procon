require 'numo/narray'

h, w, n = gets.split.map(&:to_i)
field = Numo::Int32.zeros(h+1, w+1)

n.times do
  a,b,c,d = gets.split.map(&:to_i)
  field[a-1,b-1] += 1
  field[c,b-1] -= 1
  field[a-1,d] -= 1
  field[c,d] += 1
end

field = field.cumsum(0).cumsum(1)[0...-1,0...-1]
field.to_a.each do |row|
  puts row.join(' ')
end
