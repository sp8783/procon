n = gets.to_i
set = Set.new

n.times do |i|
  s = gets.chomp
  puts i + 1 unless set.include?(s)
  set.add(s)
end
