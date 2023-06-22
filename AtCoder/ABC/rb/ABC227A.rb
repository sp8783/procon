n, k, a = gets.split.map(&:to_i)
if (a + k - 1) % n == 0
  ans = n
else
  ans = (a + k - 1) % n
end
puts ans
