n = gets.to_i
A = gets.split.map(&:to_i)

puts A.each_with_index.select { |_, i| i.even? }.map(&:first).sum
