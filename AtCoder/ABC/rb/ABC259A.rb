n, m, x, t, d = gets.split.map(&:to_i)

if x <= m
  puts t
else
  puts t - d * (x - m)
end
