n = gets.to_i

n.times do
  x = gets.chomp
  y = gets.chomp

  dp = Array.new(x.size+1){Array.new(y.size+1, 0)}

  (1..x.size).each do |i|
    (1..y.size).each do |j|
      if x[i-1] == y[j-1]
        dp[i][j] = dp[i-1][j-1] + 1
      else
        dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
      end
    end
  end
  puts dp[x.size][y.size]
end
