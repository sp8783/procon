loop do
  w,h = gets.split.map(&:to_i)
  exit if w == 0 && h == 0

  field = []
  h.times do
    field << gets.split.map(&:to_i)
  end

  def dfs(field, x, y)
    field[y][x] = 0
    (-1..1).each do |dy|
      (-1..1).each do |dx|
        nx = x + dx
        ny = y + dy
        if 0 <= nx && nx < field[0].size && 0 <= ny && ny < field.size && field[ny][nx] == 1
          dfs(field, nx, ny)
        end
      end
    end
  end

  count = 0
  h.times do |y|
    w.times do |x|
      if field[y][x] == 1
        dfs(field, x, y)
        count += 1
      end
    end
  end
  puts count
end
