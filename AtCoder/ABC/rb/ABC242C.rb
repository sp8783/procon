n = gets.to_i

dp = Array.new(n) { Array.new(11, 0)}
dp[0] = [0] + [1]*9 + [0]
MOD = 998244353

(1..n-1).each do |i|
  (1..9).each do |j|
    dp[i][j] = (dp[i-1][j-1] + dp[i-1][j] + dp[i-1][j+1]) % MOD
  end
end
ans = (dp[-1].sum) % MOD
puts ans
