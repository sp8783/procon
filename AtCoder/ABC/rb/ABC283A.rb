l1, r1, l2, r2 = gets.split.map(&:to_i)

puts [[r1,r2].min - [l1,l2].max, 0].max
