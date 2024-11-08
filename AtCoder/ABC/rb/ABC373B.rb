s = gets.chomp.chars

ans = 0
idx = s.index("A")

("B".."Z").each do |si|
  ans += (idx - s.index(si)).abs
  idx = s.index(si)
end

puts ans
