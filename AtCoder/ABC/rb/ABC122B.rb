S = gets.chomp.chars

ans = 0
cnt = 0

S.each do |s|
  if ["A", "C", "G", "T"].include?(s) 
    cnt += 1
  else
    ans = [ans, cnt].max
    cnt = 0
  end
end

puts [ans, cnt].max
