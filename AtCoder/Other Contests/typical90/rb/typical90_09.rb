def angle(x1, y1, x2, y2)
  angle = Math.atan2(y2 - y1, x2 - x1) * 180 / Math::PI
  angle < 0 ? angle + 360 : angle
end

n = gets.to_i
points = n.times.map { gets.split.map(&:to_i) }
ans = 0

n.times do |i|
  xi, yi = points[i]
  angles = []
  n.times do |j|
    next if i == j
    xj, yj = points[j]
    angles << angle(xi, yi, xj, yj)
  end
  angles.sort!
  l = 0
  r = 1
  while r < n - 1
    angle = angles[r] - angles[l]
    angle_abs = angle.abs
    angle_abs = 360 - angle_abs if angle_abs > 180
    ans = [ans, angle_abs].max
    if angle < 180
      r += 1
    else
      l += 1
    end
  end
end

puts ans
