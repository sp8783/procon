n, l = gets.split.map(&:to_i)

dp = Array.new(n + 1, 0)
dp[0] = 1
MOD = 10**9 + 7

n.times do |i|
  dp[i + 1] += dp[i]
  dp[i + 1] %= MOD

  if i + l <= n
    dp[i + l] += dp[i] 
    dp[i + l] %= MOD
  end
end

puts dp[n]
