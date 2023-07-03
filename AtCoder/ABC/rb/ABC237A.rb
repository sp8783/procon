n = gets.to_i
a = 2.pow(31)
ans = "No"
if -1 * a <= n && n < a
  ans = "Yes"
end

puts ans
