r, c = gets.split.map(&:to_i)
start = gets.split.map { |x| x.to_i - 1 }
goal = gets.split.map { |x| x.to_i - 1 }
maze = r.times.map{gets.chomp.chars}

dist = Array.new(r){Array.new(c, -1)}
dist[start[0]][start[1]] = 0
cnt = 0

queue = [[start, cnt]]

while !queue.empty?
  v, cnt = queue.shift
  x, y = v
  dxy = [[-1, 0], [1, 0], [0, -1], [0, 1]]

  dxy.each do |dx, dy|
    nx, ny = x + dx, y + dy
    next if nx < 0 || nx >= r || ny < 0 || ny >= c
    next if maze[nx][ny] == '#'
    next if dist[nx][ny] != -1
    dist[nx][ny] = cnt + 1
    queue << [[nx, ny], cnt + 1]
  end
end

puts dist[goal[0]][goal[1]]
