n, m = gets.split.map(&:to_i)

m_bit = m.to_s(2).chars.map(&:to_i).reverse
MOD = 998244353
ans = 0

m_bit.each_with_index do |bit, i|
  # p "bit: #{bit}, i: #{i}"
  next if bit == 0
  ans += (n+1)/(2**(i+1)) * 2**i
  # p "1項: #{(n+1)/(2**(i+1)) * 2**i}"
  ans += [(n+1) % (2**(i+1)) - 2**i, 0].max
  # p "2項: #{(n+1) % (2**(i+1)) - 2**i}"
  ans %= MOD
end

puts ans
