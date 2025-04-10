s = gets.chomp.chars

ans = 0
ans += 1 if s[0] == "o"
ans += 1 if s[-1] == "i"

s.each_cons(2) do |a, b|
  ans += 1 if a == b
end

puts ans
