n = gets.to_i
points = Array.new(n) { gets.split.map(&:to_i) }
points.sort!

def cross_product(a, b, c)
  (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])
end

vertices = []

points.each do |point|
  while vertices.size > 1 && cross_product(vertices[-1], vertices[-2], point) <= 0
    vertices.pop
  end
  vertices << point
end

t = vertices.size

(n - 2).downto(0) do |i|
  point = points[i]
  while vertices.size > t && cross_product(vertices[-1], vertices[-2], point) <= 0
    vertices.pop
  end
  vertices << point
end

wS = 0
b = 0

(0...vertices.size - 1).each do |i|
  x1, y1 = vertices[i]
  x2, y2 = vertices[i + 1]
  wS += (x1 - x2) * (y1 + y2)
  b += (x2 - x1).abs.gcd((y2 - y1).abs)
end

wS = wS.abs
puts (wS + 2 + b) / 2 - n
