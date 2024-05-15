n = gets.to_i
points = n.times.map { gets.split.map(&:to_i) }
points_set = points.to_set

ans = 0
(0...n).to_a.combination(2) do |i, j|
  xi, yi = points[i]
  xj, yj = points[j]
  
  vec_x, vec_y = xj - xi, yj - yi
  if points_set.include?([xi - vec_y, yi + vec_x]) && points_set.include?([xj - vec_y, yj + vec_x])
    ans = [ans, vec_x ** 2 + vec_y ** 2].max
  end
end

puts ans
