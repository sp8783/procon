abc = gets.split.map(&:to_i).sort

gcd = abc.inject(:gcd)
abc.map! { |i| i / gcd }
puts abc.sum - 3
