n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)

sum_1 = a.product(b).map(&:sum).sort
sum_2 = c.product(d).map(&:sum).sort

ans = sum_1.each.any? do |s1|
  x = sum_2.bsearch { |s2| s2 >= k - s1 } || sum_2[-1]
  s1 + x == k
end

puts ans ? 'Yes' : 'No'
