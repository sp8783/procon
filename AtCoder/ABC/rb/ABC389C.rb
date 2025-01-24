q = gets.to_i

idx = 0
len = 0
queue = []

q.times do
  type, x = gets.split.map(&:to_i)
  case type
  when 1
    queue << len
    len += x
  when 2
    idx += 1
  when 3
    puts queue[idx + x - 1] - queue[idx]
  end
end
