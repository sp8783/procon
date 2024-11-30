n, d = gets.split.map(&:to_i)
s = gets.chomp

cnt = s.count('@') - d

ans = ''
n.times do |i|
  if s[i] == '@' && cnt > 0
    ans += '@'
    cnt -= 1
  else
    ans += '.'
  end
end

puts ans
