S = gets.chomp.chars
T = gets.chomp.chars

sn = S.size
tn = T.size

dp = Array.new(sn+1) { Array.new(tn+1, 0) }
(1..sn).each { |i| dp[i][0] = i }
(1..tn).each { |j| dp[0][j] = j }

sn.times do |i|
  tn.times do |j|
    dp[i+1][j+1] = [dp[i][j+1] + 1, dp[i+1][j] + 1, dp[i][j] + (S[i] == T[j] ? 0 : 1)].min
  end
end

puts dp[sn][tn]
