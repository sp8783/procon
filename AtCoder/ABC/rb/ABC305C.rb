DIRS = [[0,1], [0,-1], [-1,0], [1,0]]

h, w = gets.split.map(&:to_i)
g = Array.new(h) { gets }

ans = nil
(0...h).map do |y|
  (0...w).map do |x|
    next if g[y][x] == "#"

    cnt = 0
    DIRS.each do |(dy, dx)|
      ny = y + dy
      nx = x + dx
      next if ny < 0 || ny >= h || nx < 0 || nx >= w

      cnt += 1 if g[ny][nx] == "#"
    end

    ans = [y+1, x+1] if cnt > 1
  end
end

puts ans * " "
