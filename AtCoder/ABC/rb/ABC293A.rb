s = gets.chomp.chars
ans = ""

(0...s.size/2).each do |i|
  ans += s[i*2+1] + s[i*2]
end

puts ans
