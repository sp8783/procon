n = gets.to_i
s = gets.chomp.chars
t = gets.chomp.chars

ans = 0
s.zip(t).each do |a, b|
  ans += 1 if a != b
end

puts ans
