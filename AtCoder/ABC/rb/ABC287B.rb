n, m = gets.split.map(&:to_i)
s_arr = n.times.map{gets.chomp[3..5]}
t_arr = m.times.map{gets.chomp}

puts s_arr.count {|s| t_arr.include?(s)}
