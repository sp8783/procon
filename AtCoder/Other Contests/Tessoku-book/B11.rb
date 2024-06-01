n = gets.to_i
A = gets.split.map(&:to_i).sort
q = gets.to_i
q.times do
  x = gets.to_i
  puts A.bsearch_index{|a| a >= x} || n
end
