N, M, K = gets.split.map(&:to_i)

dp = Array.new(N+1) { Array.new(K+1,0) }
dp[0][0] = 1
N.times do |i|
  K.times do |j|
    (1..M).each do |k|
      dp[i+1][j+k] += dp[i][j] if j+k <= K
    end
  end
end
ans = 0
dp[N].each do |n|
  ans += n % 998244353
end
puts ans % 998244353
