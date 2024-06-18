w, h = gets.split.map(&:to_i)

def comb(n, r, mod=10**9+7, mx=10**6)
  fact = [1] * (mx + 1)
  mx.times do |i|
    fact[i + 1] = fact[i] * (i + 1) % mod
  end
  return (fact[n] * fact[n - r].pow(mod - 2, mod) * fact[r].pow(mod - 2, mod)) % mod
end

puts comb(w + h - 2, w - 1)
