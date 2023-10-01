n = gets.to_i
x = n
ans = [x]

while x > 0
  x = (x-1) & n
  ans << x
end

puts ans.reverse
