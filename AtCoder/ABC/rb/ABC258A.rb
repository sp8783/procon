k = gets.to_i
puts "#{21+k/60}:#{(k%60).to_s.rjust(2,"0")}"
