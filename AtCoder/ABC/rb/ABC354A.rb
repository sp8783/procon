h = gets.to_i

ans = 1

loop do 
  break if 2**ans - 1 > h
  ans += 1
end

puts ans
