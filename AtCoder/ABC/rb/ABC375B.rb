n = gets.to_i
xy = [[0,0]] + n.times.map { gets.split.map(&:to_i) } + [[0,0]]

ans = 0
xy.each_cons(2) do |(x1, y1), (x2, y2)|
  ans += Math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)
end

puts ans
