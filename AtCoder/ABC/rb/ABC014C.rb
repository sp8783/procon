n = gets.to_i
lst = Array.new(1000010, 0)
n.times do
  a, b = gets.split.map(&:to_i)
  lst[a] += 1
  lst[b+1] -= 1
end

ans = 0
(10**6+5).times do |i|
  ans = [ans, lst[i]].max
  lst[i+1] += lst[i]
end

puts ans
