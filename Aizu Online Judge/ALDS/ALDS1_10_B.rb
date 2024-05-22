n = gets.to_i
nc = n.times.map {gets.split.map(&:to_i)}

dp = Array.new(n+1) { Array.new(n+1, 0) }
lst = [nc[0][0]] + nc.map(&:last)

2.upto(n) do |length|
  1.upto(n - length + 1) do |i|
    j = i + length - 1
    dp[i][j] = 1 << 31
    i.upto(j-1) do |k|
      dp[i][j] = [dp[i][j], dp[i][k] + dp[k+1][j] + lst[i-1] * lst[k] * lst[j]].min 
    end
  end
end

puts dp[1][n]
