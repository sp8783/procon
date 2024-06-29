n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a1 = a[0...n/2]
a2 = a[n/2..-1]

sum_1 = []
[0, 1].repeated_permutation(a1.size) do |bits|
  sum = 0
  a1.each_with_index do |a, i|
    sum += a if bits[i] == 1
  end
  sum_1 << sum
end
sum_1.sort!

sum_2 = []
[0, 1].repeated_permutation(a2.size) do |bits|
  sum = 0
  a2.each_with_index do |a, i|
    sum += a if bits[i] == 1
  end
  sum_2 << sum
end
sum_2.sort!

ans = sum_1.each.any? do |s1|
  x = sum_2.bsearch { |s2| s2 >= k - s1 } || sum_2[-1]
  s1 + x == k
end

puts ans ? 'Yes' : 'No'
