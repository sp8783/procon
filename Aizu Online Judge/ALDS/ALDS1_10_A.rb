n = gets.to_i
dp = Array.new(n+1, 0)

(0..n).each do |i|
  if i == 0 || i == 1
    dp[i] = 1
  else
    dp[i] = dp[i-1] + dp[i-2]
  end
end

puts dp[n]
