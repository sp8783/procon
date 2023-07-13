n, k, x = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

arr = []
A.each do |a|
  arr <<  a - [a/x, k].min * x
  k -= [a/x, k].min
end

arr = arr.sort_by{ |v| -v % x }
puts k >= n ? 0 : arr[k..].sum
