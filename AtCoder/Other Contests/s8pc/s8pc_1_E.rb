n, q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
C = [1] + gets.split.map(&:to_i) + [1]
MOD = 10**9 + 7

dist = Array.new(n, 0)
(1...n).each do |i|
  dist[i] = dist[i-1] + (A[i-1]%MOD).pow(A[i]%MOD, MOD)
end

ans = 0
C.each_cons(2) do |c1, c2|
  c1, c2 = c2, c1 if c1 > c2
  ans += (dist[c2-1] - dist[c1-1]) % MOD
  ans %= MOD
end

puts ans
