n, m = gets.split.map(&:to_i)
arr_k = []
arr_a = []

m.times do
  k, *a = gets.split.map(&:to_i)
  arr_k << k
  arr_a << a
end

b = gets.split.map(&:to_i)
hash = b.map.with_index { |v, i| [v, i] }.to_h

ans = [0]*n

arr_a.each do |a|
  idx = a.map { |v| hash[v] }.max
  ans[idx] += 1
end

v = 0
ans.each do |a|
  v += a
  puts v
end
