n, w = gets.split.map(&:to_i)
items = n.times.map { gets.split.map(&:to_i) }

dp = Array.new(n+1) { Array.new(w+1, 0) }
dp[0][0] = 0

n.times do |i|
  (w+1).times do |j|
    if j - items[i][0] >= 0
      dp[i+1][j] = [dp[i+1][j], dp[i][j-items[i][0]] + items[i][1]].max
    end
    dp[i+1][j] = [dp[i+1][j], dp[i][j]].max
  end
end

puts dp[n][w]
