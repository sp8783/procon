def gcd(a, b)
  a, b = b, a if a < b
  return b if a % b == 0
  gcd(b, a % b)
end

a, b = gets.split.map(&:to_i)
puts gcd(a, b)


