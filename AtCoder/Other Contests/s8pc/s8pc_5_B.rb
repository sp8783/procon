n, m = gets.split.map(&:to_i)

circle1 = n.times.map { gets.split.map(&:to_i) }
circle2 = m.times.map { gets.split.map(&:to_i) }

if m == 0
  puts circle1.map(&:last).min
else
  r_min = 10**9
  circle2.combination(2).each do |c1, c2|
    x1, y1 = c1
    x2, y2 = c2
    r_min = [r_min, Math.hypot(x1 - x2, y1 - y2) / 2.0].min
  end
  if n > 0
    circle1.each do |cr|
      xr, yr, r = cr
      circle2.each do |cm|
        xm, ym = cm
        r_min = [r_min, Math.hypot(xr - xm, yr - ym) - r].min
      end
    end
  end
end

puts r_min
