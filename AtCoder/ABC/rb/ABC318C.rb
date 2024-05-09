n, d, p = gets.split.map(&:to_i)
f = gets.split.map(&:to_i).sort.reverse

sum = f.sum
ans = f.sum
n.times do |i|
  j = (i+d)/d
  sum -= f[i]
  ans = [ans, sum + p*j].min
end

puts ans
