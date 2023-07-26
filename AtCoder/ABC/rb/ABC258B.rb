n = gets.to_i
arr = n.times.map { gets.chomp.chars.map(&:to_i) }
M = arr.map(&:max).max

dxy = [
  [1,0],
  [-1,0],
  [0,1],
  [0,-1],
  [1,1],
  [-1,1],
  [1,-1],
  [-1,-1]
]

ans = 0
n.times do |i|
  n.times do |j|
    next if M != arr[i][j]
    x, y = i, j
    dxy.each do |dx, dy|
      tot = 0
      n.times do
        tot *= 10
        tot += arr[x][y].to_i
        x = (x + dx) % n
        y = (y + dy) % n
      end
      ans = [ans, tot].max
    end
  end
end

puts ans
