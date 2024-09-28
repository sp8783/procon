n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a = a + a

puts a[n-k,n].join(' ')
