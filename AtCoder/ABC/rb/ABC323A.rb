s = gets.chomp.chars

ans = "Yes"
s.each_with_index do |c, i|
  if i%2 == 1 && c == "1"
    ans = "No"
    break
  end
end

puts ans
