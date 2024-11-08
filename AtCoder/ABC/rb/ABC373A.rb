ans = 0
(1..12).each do |i|
  ans += 1 if gets.chomp.length == i
end

puts ans
