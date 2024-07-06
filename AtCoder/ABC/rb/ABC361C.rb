n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

ans = 10**10
(k+1).times do |i|
  ans = [ans, a[i+n-k-1] - a[i]].min
end
puts ans
