n = gets.to_i
w = gets.split

puts ["and","not","that","the","you"].any? {|v| w.include?(v)} ? "Yes" : "No"
