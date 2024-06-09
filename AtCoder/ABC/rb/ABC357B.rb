s = gets.chomp

cnt = s.chars.count { |si| ("a".."z").include?(si)}
if cnt > s.size - cnt
  puts s.downcase
else
  puts s.upcase
end
