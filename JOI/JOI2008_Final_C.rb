N, M = gets.split.map(&:to_i)
P = [0] + N.times.map { gets.to_i }

P2 = (0..N).to_a.repeated_combination(2).map { |i, j| P[i] + P[j] }.uniq.sort.reverse

ans = 0
P2.each do |pp|
  next if pp > M
  x = P2.bsearch { |pi| pp + pi <= M } || 0
  ans = [ans, pp + x].max
end

puts ans
