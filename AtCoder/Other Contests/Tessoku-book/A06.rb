require 'numo/narray'

n, q = gets.split.map(&:to_i)
a = [0] + gets.split.map(&:to_i)
cum = Numo::Int32[*a].cumsum

q.times do
  l, r = gets.split.map(&:to_i)
  puts cum[r] - cum[l-1]
end

