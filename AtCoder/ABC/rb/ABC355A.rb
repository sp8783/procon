a,b = gets.split.map(&:to_i)

if a == b
  puts -1
else
  puts [1,2,3] - [a,b]
end
