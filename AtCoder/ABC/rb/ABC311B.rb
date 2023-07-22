n, d = gets.split.map(&:to_i)
S = n.times.map { gets.chomp.chars }

ans = 0
tmp = 0
d.times do |i|
  if S.map { |s| s[i] }.all? {|v| v == "o"}
    tmp += 1
  else
    ans = [ans, tmp].max
    tmp = 0
  end
end
ans = [ans, tmp].max

puts ans
