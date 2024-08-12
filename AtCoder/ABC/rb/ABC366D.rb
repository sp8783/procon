n = gets.to_i
a = Array.new(n) {}

n.times do |i|
  a[i] = n.times.map { gets.split.map(&:to_i) }
end

s = Array.new(n + 1) { Array.new(n + 1) { Array.new(n + 1, 0) } }

(1..n).each do |x|
  (1..n).each do |y|
    (1..n).each do |z|
      s[x][y][z] = a[x-1][y-1][z-1] + s[x-1][y][z] + s[x][y-1][z] + s[x][y][z-1] - s[x-1][y-1][z] - s[x-1][y][z-1] - s[x][y-1][z-1] + s[x-1][y-1][z-1]
    end
  end
end

q = gets.to_i
q.times do
  lx, rx, ly, ry, lz, rz = gets.split.map(&:to_i)
  
  result = s[rx][ry][rz] - s[lx-1][ry][rz] - s[rx][ly-1][rz] - s[rx][ry][lz-1] + s[lx-1][ly-1][rz] + s[lx-1][ry][lz-1] + s[rx][ly-1][lz-1] - s[lx-1][ly-1][lz-1]
  
  puts result
end
