h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp }

cnt = [0]*[h, w].min
check = []

dxy = [[-1, 1], [-1, -1], [1, 1], [1, -1]]

(0...h).each do |i|
  (0...w).each do |j|
    next if a[i][j] != '#' || check.include?([i, j])
    
    d_max = 0
    flg = true
    while flg
      (1..).each do |d|
        dxy.each do |di, dj|
          ni = d * di + i
          nj = d * dj + j
          if ni < 0 || nj < 0 || ni >= h || nj >= w || a[ni][nj] != '#'
            d_max = d - 1
            flg = false
            break
          end
          check << [ni, nj]
        end
        
        break unless flg
      end
    end

    cnt[d_max - 1] += 1 if d_max > 0
  end
end

puts cnt * " "
