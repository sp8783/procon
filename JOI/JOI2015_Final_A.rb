n, m = gets.split.map(&:to_i)
route = gets.split.map(&:to_i)
cost = (n-1).times.map { gets.split.map(&:to_i) }

lst = Array.new(n, 0)
route.each_cons(2) do |a, b|
  b, a = a, b if a > b
  lst[a-1] += 1
  lst[b-1] -= 1
end

(n-1).times do |i|
  lst[i+1] += lst[i]
end

ans = 0
(n-1).times do |i|
  ans += [cost[i][0] * lst[i], cost[i][1] * lst[i] + cost[i][2]].min
end

puts ans
