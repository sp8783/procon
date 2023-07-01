H, W = gets.split.map(&:to_i)
maze = H.times.map{ gets.chomp.chars }

visited = Array.new(H) { Array.new(W, false) }
hash = {
  "s" => "n",
  "n" => "u",
  "u" => "k",
  "k" => "e",
  "e" => "s",
}
stack = [[0,0]]
mv = [[1,0], [0,1], [-1,0], [0,-1]]

ans = "No"
while stack.size != 0
  x, y = stack.pop
  s = maze[y][x]

  visited[y][x] = true

  mv.each do |dx, dy|
    nx, ny = x + dx, y + dy
    
    if nx < 0 || nx >= W || ny < 0 || ny >= H
      next
    end

    if visited[ny][nx]
      next
    end

    if hash[s] == maze[ny][nx]
      if nx == W-1 && ny == H-1
        ans = "Yes"
        break
      end
      stack << [nx, ny]
    end
  end
end

puts ans
