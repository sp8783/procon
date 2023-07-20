a,b,c = gets.split.map(&:to_i)

if (b - a)*(c - b) >= 0
  puts "Yes"
else
  puts "No"
end
