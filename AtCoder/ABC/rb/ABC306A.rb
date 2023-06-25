n = gets.to_i
S = gets.chars

ans = ""
S.each do |s|
  ans += s[0]*2
end

puts ans
