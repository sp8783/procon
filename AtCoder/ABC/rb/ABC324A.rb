n = gets.to_i
A = gets.split.map(&:to_i)
puts A.to_set.length == 1 ? "Yes" : "No"
