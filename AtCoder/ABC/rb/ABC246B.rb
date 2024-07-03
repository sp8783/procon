a,b = gets.split.map(&:to_i) 
dist = Math.hypot(a,b)
puts [a,b].map{|x| x / dist}.join(" ")
