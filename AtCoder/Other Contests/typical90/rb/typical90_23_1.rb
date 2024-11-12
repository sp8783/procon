# 小課題1：bit全探索

h, w = gets.split.map(&:to_i)
MOD = 10**9 + 7

field = h.times.map { gets.chomp.chars }

# 白マスの位置を取得
white_positions = []
h.times do |i|
  w.times do |j|
    white_positions << [i, j] if field[i][j] == '.'
  end
end

n = white_positions.size
ans = 0

(1 << n).times do |bit|
  positions = []
  flag = true
  n.times do |i|
    if bit[i] == 1
      x, y = white_positions[i]
      positions << [x, y]
      [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]].each do |dx, dy|
        nx, ny = x + dx, y + dy
        if positions.include?([nx, ny])
          flag = false
          break
        end
      end
    end
    break unless flag
  end
  ans = (ans + 1) % MOD if flag
end

puts ans
