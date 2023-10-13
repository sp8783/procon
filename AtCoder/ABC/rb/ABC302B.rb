H, W = gets.split.map(&:to_i)
S = H.times.map{ gets.chomp.chars }

word = "snuke"
dxy = [[0,1], [0,-1], [1,0], [1,1], [1,-1], [-1,0], [-1,1], [-1,-1]]

H.times do |h|
  W.times do |w|
    next unless S[h][w] == "s"
    dxy.each do |dx, dy|
      ans = []
      res = true
      5.times do |i|
        y = h + (dy * i)
        x = w + (dx * i)

        if y < 0 || x < 0 || x >= W || y >= H
          res = false
          break
        end
        if S[y][x] != word[i]
          res = false
          break
        end
        ans.push([y,x])
      end
      if res
        ans.each do |y, x|
          puts "#{y + 1} #{x + 1}"
        end
        exit
      end
    end
  end
end
