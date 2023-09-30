n = gets.to_i
X = gets.split.map(&:to_i).sort

puts X[n...n*4].sum/(n*3.0)
