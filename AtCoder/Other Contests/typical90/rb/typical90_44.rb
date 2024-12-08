n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

shift = 0
q.times do
  t, x, y = gets.split.map(&:to_i)
  x = (x - 1 - shift) % n
  y = (y - 1 - shift) % n
  if t == 1
    a[x], a[y] = a[y], a[x]
  elsif t == 2
    shift += 1
  else
    puts a[x]
  end
end
