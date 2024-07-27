n, w = gets.split.map(&:to_i)
items = n.times.map { gets.split.map(&:to_i) }
v = items.map { |item| item[1] }.sum

dp = Array.new(n+1) { Array.new(v+1, Float::INFINITY) }
dp[0][0] = 0

n.times do |i|
  (v+1).times do |j|
    if j - items[i][1] >= 0
      dp[i+1][j] = [dp[i][j], dp[i][j-items[i][1]] + items[i][0]].min
    else
      dp[i+1][j] = dp[i][j]
    end
  end
end

ans = dp[n].rindex { |dpn| dpn <= w }
puts ans
