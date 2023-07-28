hash = gets.chomp.chars.tally

ans = -1
hash.each do |k, v|
  ans = k if v == 1
end

puts ans
