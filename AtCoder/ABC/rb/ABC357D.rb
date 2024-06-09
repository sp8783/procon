n = gets.to_i
MOD = 998244353

ten_power_len = 10.pow(n.to_s.length, MOD)
ans = n * (ten_power_len.pow(n, MOD) - 1) * (ten_power_len - 1).pow(MOD-2, MOD) % MOD

puts ans
