s = gets.chomp
t = gets.chomp

ans = "No"

(s.size - t.size + 1).times do |i|
  s[i,t.size]
  if s[i,t.size] == t
    ans = "Yes"
  end
end

puts ans
