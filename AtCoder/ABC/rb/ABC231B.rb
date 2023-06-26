n = gets.to_i
S = n.times.map{gets.chomp}
puts S.tally.max_by(&:last)[0]
