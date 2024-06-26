while true
  n = gets.to_i
  break if n == 0

  lst = Array.new(n) { gets.split.map(&:to_i) }
  lst = lst.transpose.map(&:reverse)

  ans = 0
  flag = true

  while flag
    tot = 0
    n.times do |i|
      cnt = 1
      (1...5).each do |j|
        if lst[j-1][i] == lst[j][i]
          cnt += 1
          if cnt >= 3 && j == 4
            tot += lst[j-1][i] * cnt
            (j-cnt+1..j).each { |k| lst[k][i] = 0 }
            break
          end
        else
          if cnt >= 3
            tot += lst[j-1][i] * cnt
            (j-cnt...j).each { |k| lst[k][i] = 0 }
            break
          end
          cnt = 1
        end
      end
    end

    ans += tot
    flag = false if tot == 0

    if flag
      5.times do |j|
        tmp = []
        cnt_0 = 0
        n.times do |i|
          if lst[j][i] != 0
            tmp << lst[j][i]
          else
            cnt_0 += 1
          end
        end
        lst[j] = tmp + Array.new(cnt_0, 0)
      end
    end
  end

  puts ans
end
