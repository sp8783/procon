n, k = gets.split.map(&:to_i)
S = gets.chomp.chars

ans = ""
cnt = 0
S.each do |s|
  if s == "o"
    cnt += 1
    ans += cnt <= k ? "o" : "x"
  else
    ans += "x"
  end
end

puts ans
