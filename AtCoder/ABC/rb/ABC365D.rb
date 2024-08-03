n = gets.to_i
s = gets.chomp.chars

dp = Array.new(n + 1) { Array.new(3, 0) }

# dp[i][j]: i回目までのじゃんけんで、jを出したときの最大値（じゃんけんの手は連続で出せない）
# j: 0 -> R, 1 -> P, 2 -> S
n.times do |i|
  case s[i]
  when 'R'
    dp[i+1][0] = [dp[i][1], dp[i][2]].max
    dp[i+1][1] = [dp[i][0], dp[i][2]].max + 1
    dp[i+1][2] = 0
  when 'P'
    dp[i+1][0] = 0
    dp[i+1][1] = [dp[i][0], dp[i][2]].max
    dp[i+1][2] = [dp[i][0], dp[i][1]].max + 1
  when 'S'
    dp[i+1][0] = [dp[i][1], dp[i][2]].max + 1
    dp[i+1][1] = 0
    dp[i+1][2] = [dp[i][0], dp[i][1]].max
  end
end

puts dp[n].max
