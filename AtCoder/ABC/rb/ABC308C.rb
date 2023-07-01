n = gets.to_i
arr = []

n.times do |i|
  a, b = gets.split.map(&:to_i)
  arr << [Rational(a, (a+b)), i+1]
end

arr = arr.sort_by {|x| [-x[0], x[1]]}

ans = []
arr.each do |p, a|
  ans << a
end

puts ans.join(" ")
