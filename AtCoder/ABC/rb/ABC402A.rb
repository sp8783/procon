s = gets.chomp.chars
puts s.filter { |si| si == si.upcase }.join
