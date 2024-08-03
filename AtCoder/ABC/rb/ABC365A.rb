y = gets.to_i

if y % 4 != 0
  puts 365
elsif y % 100 != 0
  puts 366
elsif y % 400 != 0
  puts 365
else
  puts 366
end
