n = gets.to_i
xy = n.times.map { gets.split.map(&:to_i) }
xy = xy.sort_by {|x| [x[0], -x[1]]}


lis = [xy[0][1]]
xy.size.times do |i|
  if xy[i][1] > lis[-1]
    lis << xy[i][1]
  else
    idx = lis.bsearch_index{|x| x >= xy[i][1]}
    lis[idx] = xy[i][1]
  end
end

puts lis.size
