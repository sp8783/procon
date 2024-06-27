h, w, k = gets.split.map(&:to_i)
field = Array.new(h) { gets.to_i.digits.reverse }
field = field.transpose.map(&:reverse)
# p field

ans = 0
w.times do |sy|
  h.times do |sx|
    # p "### sy: #{sy}, sx: #{sx} ###"
    f = field.map(&:dup)
    f[sy].delete_at(sx)
    f[sy] << 0
    # p f
    score = 0

    flag = true
    turn = 0
    while flag
      # p "turn: #{turn}"
      tot = 0
      h.times do |x|
        cnt = 1
        (1...w).each do |y|
          if f[y-1][x] == f[y][x] && f[y][x] != 0
            cnt += 1
            if cnt >= k && y == w-1
              tot += f[y][x] * cnt
              (y-cnt+1..y).each { |yi| f[yi][x] = 0 }
            end
          else
            if cnt >= k
              tot += f[y-1][x] * cnt
              (y-cnt...y).each { |yi| f[yi][x] = 0 }
            end
            cnt = 1
          end
        end
      end
      score += tot * (2**turn)
      flag = false if tot.zero?
      if flag
        w.times do |y|
          tmp = []
          cnt_0 = 0
          h.times do |x|
            if f[y][x] != 0
              tmp << f[y][x]
            else
              cnt_0 += 1
            end
          end
          f[y] = tmp + Array.new(cnt_0, 0)
        end
      end
      # p f
      # p tot
      turn += 1
    end

    # p f
    # p score

    ans = [ans, score].max
  end
end

puts ans
