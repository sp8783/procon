n = gets.to_i
s = gets.chomp

ans = -1
(n-2).times do |i|
  if s[i..i+2] == "ABC"
    ans = i+1 
    break
  end
end

puts ans
