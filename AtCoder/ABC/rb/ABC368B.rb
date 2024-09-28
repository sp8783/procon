n = gets.to_i
a = gets.split.map(&:to_i)

sum_a = a.sum

puts [sum_a / 2, sum_a - a.max].min
