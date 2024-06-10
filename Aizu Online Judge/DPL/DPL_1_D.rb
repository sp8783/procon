n = gets.to_i
A = n.times.map{gets.to_i}

lis = [A[0]]
n.times do |i|
  if A[i] > lis[-1]
    lis << A[i]
  else
    idx = lis.bsearch_index{|x| x >= A[i]}
    lis[idx] = A[i]
  end
end

puts lis.size
