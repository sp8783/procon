MOD = 998244353

N = gets.to_i
len = N.to_s.length
ans = 0

(0..len-1).each do |i|
  if i == len - 1
    ans += (N - 10**i + 2) * (N - 10**i + 1) / 2
  elsif i == 0
    ans += 45
  else
    ans += (1 + 9*(10**i)) * 9*(10**i) / 2
  end
  ans %= MOD
end

puts ans
