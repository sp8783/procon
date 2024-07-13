r, g, b = gets.split.map(&:to_i)
c = gets.chomp

if c == "Blue"
  puts [r, g].min
elsif c == "Red"
  puts [g, b].min
else
  puts [b, r].min
end
