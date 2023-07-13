x = []
y = []
3.times {
  arr = gets.split.map(&:to_i)
  x << arr[0]
  y << arr[1]
}

puts [x.tally.key(1), y.tally.key(1)].join(" ")
