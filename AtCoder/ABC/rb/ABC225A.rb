# uniq.sizeを使う
# n = gets.chomp.chars.uniq.size
# puts n == 3 ? 6 : n == 2 ? 3 : 1

# tallyを使う
l = gets.chomp.chars
n = l.tally.values.size
puts n == 3 ? 6 : n == 2 ? 3 : 1