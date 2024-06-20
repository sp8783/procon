require 'numo/narray'

n, m, q = gets.split.map(&:to_i)
cum = Numo::Int32.zeros(n+1, n+1)

m.times do
  l, r = gets.split.map(&:to_i)
  cum[l, r] += 1
end

cum = cum.cumsum(axis: 1)
cum = cum.reverse(0).cumsum(axis: 0).reverse(0)

q.times do
  a, b = gets.split.map(&:to_i)
  puts cum[a, b]
end
