n = gets.to_i
s = gets.chomp.chars

puts s.all?{|v| v!="x"} && s.any?{|v| v=="o"} ? :Yes : :No 
