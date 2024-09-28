a, b = gets.split.map(&:to_i)

l = Math.hypot(a, b)

puts [a/l, b/l].join(' ')
