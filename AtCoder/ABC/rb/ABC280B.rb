n = gets.to_i
s = gets.split.map(&:to_i)

ans = ([0] + s).each_cons(2).map { |s1, s2| s2 - s1}
puts ans
