n = gets.to_i
A = gets.split.map(&:to_i).reverse

MOD = 998244353
ans = 0
num = 0

A.each_with_index do |a, i|
  ans += (a * (n - 1 - i + num)) % MOD
  ans %= MOD
  
  num += 10 ** (a.to_s.length)
  num %= MOD
end

puts ans
