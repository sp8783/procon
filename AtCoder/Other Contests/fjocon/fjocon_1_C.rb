n = gets.to_i

puts (1..n).count { |i| i.to_s.size % 2 == 1 }
