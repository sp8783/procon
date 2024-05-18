n, w = gets.split.map(&:to_i)
items = n.times.map{gets.split.map(&:to_i)}

dp = Array.new(n+1){Array.new(w+1, 0)}
items.each_with_index do |(v, weight), i|
  (w+1).times do |j|
    if j < weight
      dp[i+1][j] = dp[i][j]
    else
      dp[i+1][j] = [dp[i][j], dp[i][j-weight] + v].max
    end
  end
end

puts dp[n][w]
