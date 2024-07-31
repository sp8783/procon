MOD = 10**9 + 7
mx = 10**6
@fact = [1]*(mx+1)
@fact_inv = [1]*(mx+1)
(1..mx).each do |i|
  @fact[i] = @fact[i-1] * i % MOD
  @fact_inv[i] = @fact_inv[i-1] * i.pow(MOD-2, MOD) % MOD
end
def comb(n, r)
  return (@fact[n] * @fact_inv[n - r] % MOD) * @fact_inv[r] % MOD
end

n = gets.to_i
(1..n).each do |k|
  ans = 0
  (1..((n-1)/k + 1)).each do |i|
    ans += comb(n - (k-1) * (i-1), i)
    ans %= MOD
  end
  puts ans
end
