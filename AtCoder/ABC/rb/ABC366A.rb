n, t, a = gets.split.map(&:to_i)

if n/2 < t || n/2 < a
  puts "Yes"
else
  puts "No"
end
