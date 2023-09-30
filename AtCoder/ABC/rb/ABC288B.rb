n, k = gets.split.map(&:to_i)
arr = n.times.map{gets.chomp}
arr[0...k].sort.each do |a|
  puts a
end
