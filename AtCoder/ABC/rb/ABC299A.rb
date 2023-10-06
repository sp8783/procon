n = gets.to_i
S = gets.chomp.chars

tmp = ""
S.each do |s|
  if s == "|" || s == "*"
    tmp += s
  end
end

puts tmp == "|*|" ? "in" : "out"
