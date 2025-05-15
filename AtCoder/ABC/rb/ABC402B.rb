q = gets.to_i
queue = []

q.times do
  case gets.split.map(&:to_i)
  in [1, x]
    queue.push(x)
  in [2]
    puts queue.shift
  end
end
