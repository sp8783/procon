x, y, n = gets.split.map(&:to_i)

puts [x*n, (n/3)*y+(n%3)*x].min
