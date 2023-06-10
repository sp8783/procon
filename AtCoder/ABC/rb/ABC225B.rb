n = gets.to_i
a = (n-1).times.map{gets.split}.flatten
puts a.tally.any?{_2==n-1} ? :Yes: :No