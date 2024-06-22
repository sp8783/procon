require 'numo/narray'

n = gets.to_i
xy = Numo::Int32.zeros(1502, 1502)
n.times do
  x, y = gets.split.map(&:to_i)
  xy[x, y] += 1
end

xy = xy.cumsum(0).cumsum(1)
q = gets.to_i
q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts xy[c, d] - xy[a-1, d] - xy[c, b-1] + xy[a-1, b-1]
end
