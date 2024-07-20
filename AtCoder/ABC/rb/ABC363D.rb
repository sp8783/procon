n = gets.to_i

if n <= 10
  puts n - 1 
  exit
end

count, digits = 10, 1
while n > count
  digits += 1
  count += 9 * 10 ** ((digits - 1) / 2)
end

count -= 9 * 10 ** ((digits - 1) / 2)
offset = n - count - 1

half = 10 ** ((digits - 1) / 2) + offset
ans = (half.to_s + half.to_s.reverse[digits % 2..-1]).to_i

puts ans
