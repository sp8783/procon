loop do
  w, h = gets.split.map(&:to_i)
  break if w == 0 && h == 0

  maze = []
  (2*h-1).times do |i|
    row = i.even? ? gets.chomp.chars + [" "] : gets.chomp.chars
    maze << row
  end

  dxy = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  visited = Array.new(2*h-1){Array.new(2*w-1, false)}

  ans = 0
  queue = [[[0, 0], 1]]

  while !queue.empty?
    (x, y), cnt = queue.shift
    if x == 2*w-2 && y == 2*h-2
      ans = cnt
      break
    end

    dxy.each do |dx, dy|
      nx, ny = x + dx*2, y + dy*2
      next if ny < 0 || ny >= 2*h-1 || nx < 0 || nx >= 2*w-1
      next if maze[y+dy][x+dx] == "1"
      visited[ny][nx] ? next : visited[ny][nx] = true
      queue << [[nx, ny], cnt + 1]
    end
  end

  puts visited[2*h-2][2*w-2] ? ans : 0
end
