n = gets.to_i
a = gets.split.map(&:to_i)

puts a.combination(3).any? { |c| c.sum == 1000} ? 'Yes' : 'No'
