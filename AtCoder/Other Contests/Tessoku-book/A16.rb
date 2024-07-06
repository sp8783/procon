n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

dp = Array.new(n+1, 0)

2.upto(n) do |i|
  if i == 2
    dp[i] = dp[i-1] + a[i-2]
  else
    dp[i] = [dp[i-1] + a[i-2], dp[i-2] + b[i-3]].min
  end
end

puts dp[-1]
