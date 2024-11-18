# 2次元累積和（いもす法）
require 'numo/narray'

n = gets.to_i
field = Numo::Int64.zeros(1001, 1001)

n.times do
  lx, ly, rx, ry = gets.split.map(&:to_i)
  field[ly, lx] += 1
  field[ly, rx] -= 1
  field[ry, lx] -= 1
  field[ry, rx] += 1
end

field = field.cumsum(0).cumsum(1)

ans = Array.new(n + 1, 0)
1000.times do |i|
  1000.times do |j|
    ans[field[i, j]] += 1
  end
end

(1..n).each do |i|
  puts ans[i]
end
