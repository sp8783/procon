n, m = gets.split.map(&:to_i)
S = Array.new(m)
K = Array.new(m)
m.times do |i|
  k, *s = gets.split.map(&:to_i)
  S[i] = s
  K[i] = k
end
P = gets.split.map(&:to_i)

ans = 0
[0, 1].repeated_permutation(n) do |bits|
  on = Array.new(m){0}
  m.times do |i|
    K[i].times do |j|
      on[i] += 1 if bits[S[i][j]-1] == 1
    end
  end
  ans += 1 if on.map{|i| i%2} == P
end

puts ans
