n, s = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

dp = Array.new(n+1) { Array.new(s+1, false) }
dp[0][0] = true

(s+1).times do |k|
  n.times do |i|
    dp[i+1][k] ||= dp[i][k]
    if k + a[i] <= s
      dp[i+1][k+a[i]] ||= dp[i][k]
    end
  end
end

puts dp[-1][-1] ? 'Yes' : 'No'
