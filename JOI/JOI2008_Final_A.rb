n = gets.to_i

ans = 0
lst = []
n.times do |i|
  color = gets.to_i
  if i == 0
    lst << [color, 1]
    ans += 1 if color == 0
  elsif i%2 == 0
    if lst[-1][0] == color
      lst[-1][1] += 1
    else
      lst << [color, 1]
    end
    if color == 0
      ans += 1
    end
  else
    if lst[-1][0] == color
      lst[-1][1] += 1
      if color == 0
        ans += 1
      end
    else
      last_color, last_cnt = lst.pop
      if lst.size > 0
        lst[-1][1] += last_cnt + 1
      else
        lst << [color, last_cnt + 1]
      end
      if color == 0
        ans += last_cnt + 1
      else
        ans -= last_cnt
      end
    end
  end
end

puts ans
