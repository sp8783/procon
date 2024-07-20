r = gets.to_i

if r%100 == 0
  puts 100
else
  puts (300 - r)%100
end
