n, m = gets.split.map(&:to_i)
coins = gets.split.map(&:to_i)

dp = Array.new(n+1, Float::INFINITY)
dp[0] = 0

(1..n).each do |i|
  coins.each do |coin|
    next if i < coin
    dp[i] = [dp[i], dp[i-coin] + 1, dp[i-1]+1].min
  end
end

puts dp[n]
