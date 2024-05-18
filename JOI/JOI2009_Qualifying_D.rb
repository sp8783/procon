m = gets.to_i
n = gets.to_i
ice = n.times.map { gets.split.map(&:to_i) }

def dfs(ice, x, y, cnt, max_cnt)
  ice[y][x] = 0
  # p "x: #{x}, y: #{y}, cnt: #{cnt}, max_cnt: #{max_cnt}"
  max_cnt = [cnt, max_cnt].max
  
  dxy = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  dxy.each do |dx, dy|
    nx = x + dx
    ny = y + dy
    if 0 <= nx && nx < ice[0].size && 0 <= ny && ny < ice.size && ice[ny][nx] == 1
      max_cnt = dfs(ice, nx, ny, cnt + 1, max_cnt)
    end
  end
  ice[y][x] = 1
  [max_cnt, cnt].max
end

ans = 0
(0...n).each do |y|
  (0...m).each do |x|
    if ice[y][x] == 1
      ans = [dfs(ice, x, y, 1, 1), ans].max
      # p ans
    end
  end
end

puts ans
