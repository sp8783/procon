def comb(n, r, mod=10**9+7, mx=10**6)
  fact = [1] * (mx + 1)
  mx.times do |i|
    fact[i + 1] = fact[i] * (i + 1) % mod
  end
  return (fact[n] * fact[n - r].pow(mod - 2, mod) * fact[r].pow(mod - 2, mod)) % mod
end

x, y = gets.split.map(&:to_i)
if (x + y) % 3 == 0 && x <= 2 * y && y <= 2 * x
  puts comb((x + y)/3, x - (x + y)/3)
else
  puts 0
end
