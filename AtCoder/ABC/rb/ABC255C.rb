x, a, d, n = gets.split.map(&:to_i)
if d < 0
  a, d = [a + d*(n - 1), -d]
end

if a <= x && x <= a + d*(n-1)
  if d == 0
    ans = 0
  else
    ans = [(x - a)%d, d - (x - a)%d].min
  end
elsif x < a
  ans = a - x
else
  ans = x - (a + d*(n-1))
end

puts ans
