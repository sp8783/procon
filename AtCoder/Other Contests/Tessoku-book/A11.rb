n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i) 

puts a.bsearch_index{|e| e > x} || n
