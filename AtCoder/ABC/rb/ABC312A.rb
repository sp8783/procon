s = gets.chomp
list = ["ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD"]

if list.include?(s)
  puts "Yes"
else
  puts "No"
end
