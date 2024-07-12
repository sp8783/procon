n = gets.to_i
s = gets.chomp.chars

str = 'atcoder'
MOD = 10**9 + 7

dp = Array.new(n + 1) { Array.new(str.size + 1, 0) }
dp[0][0] = 1

n.times do |i|
  (str.size+1).times do |j|
    dp[i + 1][j] += dp[i][j]
    dp[i + 1][j] %= MOD
    if s[i] == str[j] && j < str.size
      dp[i + 1][j + 1] += dp[i][j] 
      dp[i + 1][j + 1] %= MOD
    end
  end
end

puts dp[n][str.size]
