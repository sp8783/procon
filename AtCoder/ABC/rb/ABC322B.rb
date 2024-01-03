n, m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp

head = t[0...n] == s
tail = t[-n..-1] == s

if head && tail
  puts 0
elsif head
  puts 1
elsif tail
  puts 2
else
  puts 3
end
