k = gets.to_i

dp = Array.new(k + 10, 0)
dp[0] = 1
MOD = 10 ** 9 + 7

k.times do |i|
  (1..9).each do |j|
    dp[i + j] += dp[i]
    dp[i + j] %= MOD
  end
end

puts k % 9 == 0 ? dp[k] : 0
