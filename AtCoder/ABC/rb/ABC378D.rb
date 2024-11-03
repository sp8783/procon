def dfs(y, x, depth, used)
  return 0 if y < 0 || y >= H || x < 0 || x >= W
  
  u = y * W + x
  
  return 0 if FIELD[y][x] == 1 || used[u]
  return 1 if depth >= K

  sum = 0
  used[u] = true
  sum += dfs(y + 1, x, depth + 1, used)
  sum += dfs(y - 1, x, depth + 1, used)
  sum += dfs(y, x + 1, depth + 1, used)
  sum += dfs(y, x - 1, depth + 1, used)
  used[u] = false
  return sum
end

H, W, K = gets.split.map(&:to_i)
FIELD = H.times.map{ gets.tr('.#','01').chars.map(&:to_i) }
ans = 0
used = Array.new(H * W)
H.times do |y|
  W.times do  |x|
    ans += dfs(y, x, 0, used)
  end
end
puts ans
