n = gets.to_i
scores = n.times.map { gets.split.map(&:to_i) }

puts scores.sort_by!(&:first)[-1].sum
