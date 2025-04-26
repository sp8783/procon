n, m = gets.split.map(&:to_i)
b = gets.split.map(&:to_i).sort.reverse
w = gets.split.map(&:to_i).sort.reverse

b_cumsum = [0]*(n+1)
w_cumsum = [0]*(m+1)
w_max = [0]*(m+1)

b.each_with_index do |v, i|
  b_cumsum[i+1] = b_cumsum[i] + v
end

w.each_with_index do |v, i|
  w_cumsum[i+1] = w_cumsum[i] + v
  w_max[i+1] = [w_max[i], w_cumsum[i+1]].max
end

ans = 0
(n+1).times do |i|
  ans = [ans, b_cumsum[i] + w_max[[i,m].min]].max
end
puts ans
