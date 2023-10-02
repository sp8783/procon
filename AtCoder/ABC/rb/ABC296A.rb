n = gets.to_i
s = gets.chomp.chars

puts s.each_cons(2).all? {|a , b| a != b} ? "Yes" : "No"
