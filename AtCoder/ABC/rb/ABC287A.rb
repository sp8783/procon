n = gets.to_i
arr = n.times.map{gets.chomp}
cnt = arr.count("For")
puts cnt > n/2.0 ? "Yes" : "No"
