arr = gets.split.map(&:to_i)

if arr.tally.values.sort == [2,3]
  puts "Yes"
else
  puts "No"
end
