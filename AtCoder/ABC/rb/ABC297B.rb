S = gets.chomp.chars
b_idx = []
kr = []

S.each_with_index do |s, i|
  if s == "B"
    b_idx << i
  elsif s == "K" || s == "R"
    kr << s
  end
end

puts b_idx.sum.odd? && kr == ["R","K","R"] ? :Yes : :No
