sx, sy = gets.split.map(&:to_i)
tx, ty = gets.split.map(&:to_i)

ans = (ty - sy).abs

if tx - sx > 0
  k = (sx+sy)%2 == 0 ? 1 : 0
  diff = (tx - (sx + (ty - sy).abs + k))
else
  k = (sx+sy)%2 == 0 ? 0 : 1
  diff = (sx - (ty - sy).abs - k - tx)
end

if diff%2 == 0
  ans += [diff/2, 0].max
else
  ans += [(diff/2) + 1, 0].max
end

puts ans
