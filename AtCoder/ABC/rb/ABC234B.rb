n = gets.to_i
p = n.times.map{gets.split.map(&:to_i)}

ans = 0
(0...n).to_a.combination(2).to_a.each do |i, j|
  ans = [ans, Math.sqrt((p[i][0] - p[j][0])**2 + (p[i][1] - p[j][1])**2)].max
end

puts ans
