s = gets.chomp.chars
t = gets.chomp.chars

ans = "No"
(s.length - t.length + 1).times do |i|
  s_sub = s[i, t.length]
  if s_sub == t
    ans = "Yes"
    break
  end

  t.length.times.all? do |j|
    s_sub[j] == t[j] || s_sub[j] == '?'
  end ? ans = "Yes" : next
end

puts ans
