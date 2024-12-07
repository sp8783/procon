H, W, D = gets.split.map(&:to_i)
FIELD = H.times.map { gets.chomp.chars }

floors = []
H.times do |i|
  W.times do |j|
    floors << [i, j] if FIELD[i][j] == '.'
  end
end

def manhattan(x1, y1, x2, y2)
  (x1 - x2).abs + (y1 - y2).abs
end

def calc_area(a, b)
  sum = 0
  H.times.map do |i|
    W.times.map do |j|
      next if FIELD[i][j] == '#'

      if manhattan(a[0], a[1], i, j) <= D || manhattan(b[0], b[1], i, j) <= D
        sum += 1
      end
    end
  end
  sum
end

ans = 0
floors.combination(2) do |a, b|
  ans = [ans, calc_area(a, b)].max
end
puts ans
