n = gets.to_i
s = n.times.map {gets.chop.chars.map(&:to_i)}

puts 10.times.map {|i| s.map {|t| t.index(i)}.tally.map {|k,v| k + 10 * (v - 1)}.max}.min

