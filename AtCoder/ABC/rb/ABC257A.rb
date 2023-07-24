n, x = gets.split.map(&:to_i)
s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

puts s[(x.to_f/n).ceil - 1]
