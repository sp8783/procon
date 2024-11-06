s = gets.chomp.chars
t = gets.chomp.chars

ls, lt = s.size, t.size

ans = ls == lt ? 0 : [ls, lt].min + 1

[ls, lt].min.times do |i|
  if s[i] != t[i]
    ans = i + 1 
    break
  end
end

puts ans
