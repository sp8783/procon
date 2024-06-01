n, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
X = n.times.map { gets.split.map(&:to_i) }.transpose

puts (0...m).all? { |i| A[i] <= X[i].sum} ? 'Yes' : 'No'
