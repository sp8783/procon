s = gets.chomp.chars
ans = 0
s.each do |i| 
  if i == "v"
    ans += 1
  else
    ans += 2
  end
end

puts ans
