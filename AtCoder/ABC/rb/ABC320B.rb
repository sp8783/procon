s = gets.chomp
n = s.size

ans = 1
(0...n).each do |i|
  (i...n).each do |j|
    tmp = s[i..j]
    ans = [ans, tmp.size].max if tmp == tmp.reverse
  end
end

puts ans
