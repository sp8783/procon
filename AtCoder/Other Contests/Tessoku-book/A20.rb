S = gets.chomp.chars
T = gets.chomp.chars

sn = S.size
tn = T.size

dp = Array.new(sn+1) { Array.new(tn+1, 0) }

sn.times do |i|
  tn.times do |j|
    dp[i+1][j+1] = [dp[i][j+1], dp[i+1][j], dp[i][j] + (S[i] == T[j] ? 1 : 0)].max
  end
end

puts dp[sn][tn]
