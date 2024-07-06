n, k, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts (a[0..k-1] + [x] + a[k..-1]).join(' ')
