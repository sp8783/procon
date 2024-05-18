h, w, n = gets.split.map(&:to_i)
checkpoint = Array.new(n)
town = Array.new(h)
h.times do |i|
  row = gets.chomp.chars
  town[i] = row
  checkpoint[0] = [i, row.index('S')] if row.include?('S')
  (1..n).each do |j|
    checkpoint[j] = [i, row.index(j.to_s)] if row.include?(j.to_s)
  end
end

ans = 0
checkpoint.each_cons(2) do |(sy, sx), (gy, gx)|
  visited = Array.new(h){Array.new(w, false)}
  dist = 0
  queue = [[[sy, sx], dist]]

  while !queue.empty?
    v, dist = queue.shift
    x, y = v
    dxy = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    dxy.each do |dx, dy|
      nx, ny = x + dx, y + dy
      next if nx < 0 || nx >= h || ny < 0 || ny >= w
      next if town[nx][ny] == 'X'
      next if visited[nx][ny]
      visited[nx][ny] = true
      queue << [[nx, ny], dist + 1]
      if nx == gy && ny == gx
        ans += dist + 1
        break
      end
    end
  end
end

puts ans
