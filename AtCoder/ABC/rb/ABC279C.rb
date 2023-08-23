h, w = gets.split.map(&:to_i)
s = h.times.map{gets.chomp.chars}.transpose
t = h.times.map{gets.chomp.chars}.transpose

if s.sort == t.sort
  puts "Yes"
else
  puts "No"
end
