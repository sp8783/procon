loop do
  n = gets.to_i
  break if n == 0
  weights = gets.split.map(&:to_i)

  dp = Array.new(n) { Array.new(n, 0) }

  (1...n).each do |d|
    (0...n-d).each do |i|
      j = i + d
      if d%2 == 0
        dp[i][j] = [dp[i+1][j], dp[i][j-1]].max
      else
        if dp[i+1][j-1] == d-1
          dp[i][j] = (weights[i] - weights[j]).abs <= 1 ? d+1 : d-1
        end
        (i+1...j).each do |k|
          dp[i][j] = [dp[i][j], dp[i][k] + dp[k+1][j]].max
        end
      end
    end
  end
  puts dp[0][-1]
end
