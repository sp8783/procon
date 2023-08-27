arr = gets.chomp.chars

ans = 0

arr.reverse.each_with_index do |a, i|
  ans += (a.ord - 64)*(26**i)
end

puts ans
