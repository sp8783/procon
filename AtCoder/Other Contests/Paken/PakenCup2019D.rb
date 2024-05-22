n = gets.to_i
S = 5.times.map { gets.chomp.chars }.transpose

dp = Array.new(n) { Array.new(3, 0)}

n.times do |i|
  if i == 0
    dp[i][0] = 5 - S[i].count('R')
    dp[i][1] = 5 - S[i].count('B')
    dp[i][2] = 5 - S[i].count('W')
  else
    dp[i][0] = [dp[i - 1][1], dp[i - 1][2]].min + 5 - S[i].count('R')
    dp[i][1] = [dp[i - 1][0], dp[i - 1][2]].min + 5 - S[i].count('B')
    dp[i][2] = [dp[i - 1][0], dp[i - 1][1]].min + 5 - S[i].count('W')
  end
end
puts dp[n-1].min
