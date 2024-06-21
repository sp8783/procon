require 'numo/narray'

h, w = gets.split.map(&:to_i)
field = h.times.map { gets.split.map(&:to_i) }
cum = Numo::Int32.zeros(h+1, w+1)
cum[1..-1, 1..-1] = Numo::Int32[*field].cumsum(0).cumsum(1)

q = gets.to_i
q.times do
  a,b,c,d = gets.split.map(&:to_i)
  puts cum[c, d] - cum[a-1,d] - cum[c,b-1] + cum[a-1,b-1]
end
