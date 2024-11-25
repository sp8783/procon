n = gets.to_i
s = gets.chomp

if n.even?
  ans = "No"
else
  str = "1"*(n/2) + "/" + "2"*(n/2)
  ans = str == s ? "Yes" : "No"
end

puts ans
