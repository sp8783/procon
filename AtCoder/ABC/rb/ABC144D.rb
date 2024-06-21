a, b, x = gets.split.map(&:to_i)

h = x.to_f / (a * a)

if h * 2 < b
  puts Math.atan2(b, 2*a*h/b) * 180 / Math::PI
else
  puts Math.atan2(2*(b-h), a) * 180 / Math::PI
end
