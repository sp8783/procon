d = gets.chomp.to_i

ans = 10**13
(0..Math.sqrt(d)).each do |x|
  y = Math.sqrt((d - x**2).abs).to_i
  ans = [ans, (x**2 + y**2 - d).abs].min
  y += 1
  ans = [ans, (x**2 + y**2 - d).abs].min
end

puts ans
