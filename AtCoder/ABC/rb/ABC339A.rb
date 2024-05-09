S = gets.chomp.chars

ans = ""
S.reverse.each do |s|
  if s != "."
    ans = s + ans
  else
    break
  end
end

puts ans
