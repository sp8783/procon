a = gets.split.map(&:to_i).tally

puts a.values.include?(4) ? 2 : a.values.count{|v| v>=2}
