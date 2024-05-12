n, m = gets.split.map(&:to_i)
A = n.times.map { gets.split.map(&:to_i) }

ans = 0
(0...m).to_a.combination(2).each do |i, j|
  sum = 0
  (0...n).each do |k|
    sum += [A[k][i], A[k][j]].max
  end
  ans = [ans, sum].max
end

puts ans
