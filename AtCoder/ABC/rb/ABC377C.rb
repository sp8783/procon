n, m = gets.split.map(&:to_i)
field = Set.new

dxy = [
  [2, 1],
  [1, 2],
  [-1, 2],
  [-2, 1],
  [-2, -1],
  [-1, -2],
  [1, -2],
  [2, -1]
]
m.times do
  a, b = gets.split.map{|i| i.to_i - 1}
  field.add([a, b])

  dxy.each do |dx, dy|
    nx = a + dx
    ny = b + dy
    next if nx < 0 || nx >= n || ny < 0 || ny >= n
    field.add([nx, ny])
  end
end

puts n**2 - field.size
