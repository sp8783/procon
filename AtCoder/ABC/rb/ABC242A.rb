a, b, c, x = gets.split.map(&:to_i)

if x <= a
  ans = 1
elsif a + 1 <= x && x <= b
  ans = c.to_f / (b - a)
else
  ans = 0
end

puts ans
