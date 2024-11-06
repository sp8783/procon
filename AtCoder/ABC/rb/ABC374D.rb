n, s, t= gets.split.map(&:to_i)
points = n.times.map {gets.split.map(&:to_i)}

ans = Float::INFINITY
points.permutation do |perm|
  (1 << n).times do |i|
    res = 0.0
    x = y = 0
    perm.each_with_index do |(a, b, c, d), j|
      a, b, c, d = c, d, a, b if i[j] == 1
      res += Math.hypot(x - a, y - b) / s + Math.hypot(a - c, b - d) / t
      x, y = c, d
    end
    ans = [ans, res].min
  end
end
puts ans
