T = gets.to_i
L, X, Y = gets.split.map(&:to_i)

Q = gets.to_i
Q.times do
  e = gets.to_i
  theta = 360.0 * e / T
  yi = (-L / 2.0) * Math.sin(theta * Math::PI / 180)
  zi = (L / 2.0) * (1 - Math.cos(theta * Math::PI / 180))
  
  d = Math.sqrt(X ** 2 + (Y - yi) ** 2)
  ans = Math.atan2(zi, d)
  puts ans * 180 / Math::PI
end
