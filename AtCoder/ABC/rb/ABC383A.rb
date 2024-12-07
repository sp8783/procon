n = gets.to_i
tv = n.times.map { gets.split.map(&:to_i) }
tv = [[0, 0]] + tv
# p tv

ans = 0
(1..n).each do |i|
  ans = [ans - (tv[i][0] - tv[i - 1][0]), 0].max
  ans += tv[i][1]
end

puts ans
