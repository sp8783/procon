S = gets.chomp.chars

ans = "Yes"
idx = 0
S.reverse.each do |s|
  if s == S[idx]
    idx += 1
  elsif s == "a"
    next
  else
    ans = "No"
    break
  end
end

puts ans
