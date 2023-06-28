x, y = gets.split.map(&:to_i)

puts [((y - x).to_f/10).ceil, 0].max
