n, q = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).to_a
arr.sort!

q.times do
  x = gets.to_i
  y = arr.bsearch_index { |a| a >= x } || n
  puts n - y
end
