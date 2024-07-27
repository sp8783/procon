h, w = gets.split.map(&:to_i)
si, sj = gets.split.map(&:to_i)
field = h.times.map { gets.chomp.chars }
move = gets.chomp.chars

dic = {
  "L" => [0, -1],
  "R" => [0, 1],
  "U" => [-1, 0],
  "D" => [1, 0]
}

now = [si - 1, sj - 1]

move.each do |mv|
  nx, ny = now[0] + dic[mv][0], now[1] + dic[mv][1]
  if nx < 0 || nx >= h || ny < 0 || ny >= w || field[nx][ny] == "#"
    next
  end
  now = [nx, ny]
end

puts "#{now[0] + 1} #{now[1] + 1}"
