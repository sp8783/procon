S = gets.chomp.chars

S.each_with_index do |s, i|
  puts i+1 if s == s.upcase
end
