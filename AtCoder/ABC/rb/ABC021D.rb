def comb(n, r, mod=10**9+7, mx=10**6)
  fact = [1] * (mx + 1)
  mx.times do |i|
    fact[i + 1] = fact[i] * (i + 1) % mod
  end
  return (fact[n] * fact[n - r].pow(mod - 2, mod) * fact[r].pow(mod - 2, mod)) % mod
end

n = gets.to_i
k = gets.to_i

puts comb(n + k - 1, k)
