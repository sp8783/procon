n = gets.to_i

ans = 0
(1..n).each do |i|
  if i % 2 == 0
    next
  end
  cnt = 0
  (1..i).each do |j|
    if i % j == 0
      cnt += 1
    end
  end
  if cnt == 8
    ans += 1
  end
end

puts ans
