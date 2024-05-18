n = gets.to_i
A_id = {}
id_C = {}

n.times do |i|
  a, c = gets.split.map(&:to_i)
  A_id[a] = i
  id_C[i] = c
end

A = A_id.keys.sort.reverse
c_lst = id_C.values.sort
ans_a = []

A.each do |a|
  c = id_C[A_id[a]]
  if c_lst[-1] >= c
    c_lst = c_lst[0..c_lst.bsearch_index{|x| x >= c}]
    ans_a << a
  end
end

puts ans_a.size
puts ans_a.map{|a| A_id[a] + 1}.sort.join(" ")
