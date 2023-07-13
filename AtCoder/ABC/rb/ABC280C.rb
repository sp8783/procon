S = gets.chomp.chars
T = gets.chomp.chars

ans = T.size
S.size.times do |i|
  if S[i] != T[i]
    ans = i + 1
    break
  end
end

puts ans
