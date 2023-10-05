n = gets.to_i
q = gets.to_i
boxes = Array.new(n+1) { [] }
cards = Array.new(200010) { [] }

q.times do
  t, x, y = gets.split.map(&:to_i)
  case t
  when 1
    boxes[y] << x
    cards[x] << y
  when 2
    boxes[x].sort!
    puts boxes[x].join(' ')
  when 3
    cards[x].sort!.uniq!
    puts cards[x].join(' ')
  end
end
