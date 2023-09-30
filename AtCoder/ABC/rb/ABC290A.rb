n, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

puts B.map{|b| A[b-1]}.sum
