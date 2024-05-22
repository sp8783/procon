n, m = gets.split.map(&:to_i)
D = [0] + n.times.map{gets.to_i}
C = [0] + m.times.map{gets.to_i}

dp = Array.new(m+1) { [0] + Array.new(n, 10**9) }

(1..m).each do |i|
  (1..n).each do |j|
    dp[i][j] = [dp[i-1][j], dp[i-1][j-1] + D[j] * C[i]].min
  end
end

puts dp[m][n]
