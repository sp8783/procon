n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

dp = Array.new(2){Array.new(n, false)}
dp[0][0] = true
dp[1][0] = true

(1..n-1).each do |i|
  if dp[0][i-1]
    dp[0][i] = true if (A[i] - A[i - 1]).abs <= k
    dp[1][i] = true if (B[i] - A[i - 1]).abs <= k
  end
  if dp[1][i-1]
    dp[0][i] = true if (A[i] - B[i - 1]).abs <= k
    dp[1][i] = true if (B[i] - B[i - 1]).abs <= k
  end
end

puts dp[0][n - 1] || dp[1][n - 1] ? "Yes" : "No"
