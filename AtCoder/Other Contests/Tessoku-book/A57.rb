n, q = gets.split.map(&:to_i)
a = gets.split.map { |x| x.to_i - 1 }
M = 30

dp = Array.new(M+1) { Array.new(n, 0) }
dp[0] = a.dup

M.times do |i|
  n.times do |j|
    dp[i + 1][j] = dp[i][dp[i][j]]
  end
end

q.times do
  x, y = gets.split.map(&:to_i)
  x -= 1
  M.times do |i|
    if y[i] == 1
      x = dp[i][x]
    end
  end
  puts x + 1
end
