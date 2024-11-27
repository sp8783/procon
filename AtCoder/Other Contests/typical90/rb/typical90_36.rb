n, q = gets.split.map(&:to_i)
plus = []  # x+y
minus = []  # x-y
n.times do |i|
  x, y = gets.split.map(&:to_i)
  plus << x + y
  minus << x - y
end

min_plus, max_plus = plus.minmax
min_minus, max_minus = minus.minmax

q.times do
  i = gets.to_i - 1
  x = plus[i]
  y = minus[i]
  puts [(x - min_plus).abs, (x - max_plus).abs, (y - min_minus).abs, (y - max_minus).abs].max
end
