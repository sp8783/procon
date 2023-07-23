n = gets.to_i
A = gets.split.map(&:to_i)

arr = []
sum = 0

A.reverse.each do |a|
  arr << a+sum
  sum += a
end

puts arr.count{ |v| v >= 4}
