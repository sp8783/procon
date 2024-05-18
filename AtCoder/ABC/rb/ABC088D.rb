h, w = gets.split.map(&:to_i)
maze = []
space = 0
h.times do
  maze << gets.chomp.chars
  space += maze[-1].count(".")
end

dxy = [[-1, 0], [1, 0], [0, -1], [0, 1]]
visited = Array.new(h){Array.new(w, false)}
dist = 0
queue = [[[0, 0], dist]]

while !queue.empty?
  (x, y), dist = queue.shift
  next if visited[y][x]
  break if x == w - 1 && y == h - 1
  visited[y][x] = true

  dxy.each do |dx, dy|
    nx, ny = x + dx, y + dy
    next if nx < 0 || nx >= w || ny < 0 || ny >= h
    if maze[ny][nx] == "."
      queue << [[nx, ny], dist + 1]
    end
  end
end

puts space - dist - 1
