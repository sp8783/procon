H, W, D = gets.split.map(&:to_i)
field = H.times.map { gets.chomp.chars }

def bfs_all(humidifiers, field)
  visited = Array.new(H) { Array.new(W, false) }
  queue = []
  humidifiers.each do |si, sj|
    queue << [si, sj, 0]
    visited[si][sj] = true
  end

  dxy = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  res = 0

  while !queue.empty?
    i, j, dist = queue.shift
    res += 1 if field[i][j] == '.' || field[i][j] == 'H'
    next if dist == D

    dxy.each do |dx, dy|
      ni, nj = i + dx, j + dy
      next if ni < 0 || ni >= H || nj < 0 || nj >= W
      next if visited[ni][nj] || field[ni][nj] == '#'

      visited[ni][nj] = true
      queue << [ni, nj, dist + 1]
    end
  end

  res
end

humidifiers = []
H.times do |i|
  W.times do |j|
    humidifiers << [i, j] if field[i][j] == 'H'
  end
end

ans = bfs_all(humidifiers, field)
puts ans
