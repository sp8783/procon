n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

hash = Hash.new(-1)
b_sort = b.sort.reverse
b_idx = 0
a_min_tmp = a[0]

# p b_sort

a.each_with_index do |ai, i|
  next if ai > a_min_tmp
  a_min_tmp = [a_min_tmp, ai].min

  while b_idx < m  && b_sort[b_idx] >= ai && 
    hash[b_sort[b_idx]] = i + 1
    b_idx += 1
  end
end

# p hash
# p b

b.each do |bi|
  puts hash[bi]
end
