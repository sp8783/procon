n = gets.to_i
arr = n.times.map{gets.split}
hash = arr.flatten.tally

arr.each do |s, t|
  if s != t && hash[s] != 1 && hash[t] != 1
    puts "No"
    exit
  end
end
puts "Yes"
