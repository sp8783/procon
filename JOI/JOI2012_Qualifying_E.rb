w, h = gets.split.map(&:to_i)

tower = [Array.new(w + 2, 0), *h.times.map{ [0] + gets.split.map(&:to_i) + [0] }, Array.new(w + 2, 0)]

dxy_odd = [[-1, 0], [1, 0], [0, -1], [0, 1], [1, -1], [1, 1]]
dxy_even = [[-1, -1], [0, -1], [-1, 0], [1, 0], [-1, 1], [0, 1]]

visited = Array.new(h + 2){Array.new(w + 2, false)}
ans = 0

queue = [[0, 0]]

while !queue.empty?
  x, y = queue.shift
  next if visited[y][x]
  visited[y][x] = true
  dxy = y.odd? ? dxy_odd : dxy_even
  dxy.each do |dx, dy|
    nx, ny = x + dx, y + dy
    next if nx < 0 || nx >= w + 2 || ny < 0 || ny >= h + 2
    if tower[ny][nx] == 1
      ans += 1
    else
      queue << [nx, ny]
    end
  end
end

puts ans
