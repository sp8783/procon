n = gets.to_i
A = n.times.map{gets.to_i}

lst = A.reverse
lis = [lst[0]]

(1...n).each do |i|
  if lst[i] >= lis[-1]
    lis << lst[i]
  else
    idx = lis.bsearch_index{|x| x > lst[i]}
    lis[idx] = lst[i]
  end
end

puts lis.size
