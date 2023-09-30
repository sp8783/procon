S = gets.chomp.chars
ans = ""
S.each do |s|
  ans += s == "0" ? "1" : "0"
end
puts ans
