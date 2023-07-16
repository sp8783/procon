s = gets.chomp

if s.downcase == s || s.upcase == s|| s.chars.uniq.size != s.chars.size
  puts "No"
else
  puts "Yes"
end
