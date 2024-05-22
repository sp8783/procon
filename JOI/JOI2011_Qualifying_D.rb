n = gets.to_i
lst = gets.split.map(&:to_i)

dp = Array.new(n){Array.new(21, 0)}

(n-1).times do |i|
  if i == 0
    dp[i+1][lst[i]] = 1
    next
  end
  21.times do |j|
    if j - lst[i] >= 0
      dp[i+1][j] += dp[i][j-lst[i]]
    end
    if j + lst[i] <= 20
      dp[i+1][j] += dp[i][j+lst[i]]
    end
  end
  # p "dp: #{dp[i+1]}"
end

puts dp[-1][lst[-1]]
