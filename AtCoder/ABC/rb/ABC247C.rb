n = gets.to_i

ans = []
(1..n).each do |i|
  ans = ans + [i] + ans
end

puts ans.join(' ')
