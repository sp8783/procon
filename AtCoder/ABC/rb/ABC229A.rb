s1 = gets.chomp
s2 = gets.chomp

ans = "Yes"
if (s1 == "#." && s2 == ".#") || (s1 == ".#" && s2 == "#.")
  ans = "No"
end

puts ans
