MOD = 998244353
@fact = [1]*(1001)
@fact_inv = [1]*(1001)
(1..1000).each do |i|
  @fact[i] = @fact[i-1] * i % MOD
  @fact_inv[i] = @fact_inv[i-1] * i.pow(MOD-2, MOD) % MOD
end
def comb(n, r)
  return (@fact[n] * @fact_inv[n - r] % MOD) * @fact_inv[r] % MOD
end

K = gets.to_i
C = gets.split.map(&:to_i)

dp = Array.new(27) { Array.new(K+1, 0) }
dp[0][0] = 1

26.times do |i|
  (K+1).times do |j|
    (0..C[i]).each do |l|
      break if j+l > K
      dp[i+1][j+l] += dp[i][j] * comb(j+l, l)
      dp[i+1][j+l] %= MOD
    end
  end
end

p dp[-1].sum % MOD - 1
