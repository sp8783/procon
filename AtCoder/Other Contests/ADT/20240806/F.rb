def kaibun?(n)
  n.to_s == n.to_s.reverse
end

n = gets.to_i

x = 1
while x**3 <= n
  if kaibun?(x**3)
    ans = x**3
  end
  x += 1
end

puts ans
