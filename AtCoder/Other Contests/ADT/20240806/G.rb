n = gets.to_i

dxy = [[1, 0], [0, 1], [-1, 0], [0, -1]]
dxy_idx = 0

lst = Array.new(n) { Array.new(n, 0) }
x, y = 0, 0
cnt = 1

while 0 <= x && x < n && 0 <= y && y < n
  if cnt == n * n
    lst[y][x] = "T"
    break
  end
  lst[y][x] = cnt
  cnt += 1

  dx, dy = dxy[dxy_idx]
  if x + dx < 0 || n <= x + dx || y + dy < 0 || n <= y + dy || lst[y + dy][x + dx] != 0
    dxy_idx = (dxy_idx + 1) % 4
    dx, dy = dxy[dxy_idx]
  end

  x += dx
  y += dy
end

lst.each do |row|
  puts row.join(" ")
end
