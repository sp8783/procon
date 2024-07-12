n = gets.to_i
a = gets.split.map(&:to_i).sort

q = gets.to_i
q.times do
  b = gets.to_i
  i = a.bsearch_index { |x| x >= b } || n-1
  # p "a[i]: #{a[i]}"
  puts [(a[i] - b).abs, (a[i-1] - b).abs].min
end

