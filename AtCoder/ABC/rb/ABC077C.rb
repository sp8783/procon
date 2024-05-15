n = gets.to_i
A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i).sort
C = gets.split.map(&:to_i).sort

ans = 0

B.each do |b|
  a_idx = A.bsearch_index { |a| a >= b } || n
  c_idx = C.bsearch_index { |c| c > b } || n
  ans += a_idx * (n - c_idx)
end
puts ans
