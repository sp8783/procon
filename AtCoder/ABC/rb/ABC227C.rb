n = gets.to_i

ans = 0
a = 1
while a * a * a <= n
  b = a
  while a * b * b <= n
    c = n / (a * b)
    # c = n / a / b だとTLE
    ans += c - b + 1
    b += 1
  end
  a += 1
end

puts ans
