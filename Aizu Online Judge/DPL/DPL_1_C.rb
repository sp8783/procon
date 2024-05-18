n, w = gets.split.map(&:to_i)
items = n.times.map{gets.split.map(&:to_i)}

dp = Array.new(n+1){Array.new(w+1, 0)}

(1..n).each do |i|
  (w+1).times do |j|
    if j < items[i-1][1]
      dp[i][j] = dp[i-1][j]
    else
      dp[i][j] = [dp[i-1][j], dp[i-1][j-items[i-1][1]] + items[i-1][0], dp[i][j-items[i-1][1]] + items[i-1][0]].max
    end
  end
end

puts dp[n][w]
