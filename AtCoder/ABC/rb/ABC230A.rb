n = gets.to_i

n += 1 if n >= 42
puts "AGC" + n.to_s.rjust(3,"0")
