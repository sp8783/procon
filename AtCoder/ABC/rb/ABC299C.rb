n = gets.to_i
S = gets.chomp.chars

ans = -1
cnt = 0

S.each do |s|
  if s == "-"
    ans = cnt if cnt != 0 && ans < cnt
    cnt = 0
  else
    cnt += 1
  end
end

cnt = 0
S.reverse.each do |s|
  if s == "-"
    ans = cnt if cnt != 0 && ans < cnt
    cnt = 0
  else
    cnt += 1
  end
end

puts ans
