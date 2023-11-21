n = gets.chomp
if n.length <= 3
  puts n
else
  puts n[0..2] + "0"*(n.length-3)
end

