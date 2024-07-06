n = gets.to_i
h = gets.split.map(&:to_i)

dp = Array.new(n, 0)
dp[0] = 0
dp[1] = (h[0] - h[1]).abs

(n-2).times do |i|
  dp[i+2] = [dp[i] + (h[i+2] - h[i]).abs, dp[i+1] + (h[i+2] - h[i+1]).abs].min
end

puts dp[-1]
