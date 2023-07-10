v, a, b, c = gets.split.map(&:to_i)

while true
  v -= a
  if v < 0
    puts "F"
    break
  end
  v -= b
  if v < 0
    puts "M"
    break
  end
  v -= c
  if v < 0
    puts "T"
    break
  end
end
