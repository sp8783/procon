n = gets.to_i
qr = n.times.map{gets.split.map(&:to_i)}

q = gets.to_i
q.times do
  t, d = gets.split.map(&:to_i)
  q, r = qr[t-1]
  if d % q <= r
    puts q * (d/q) + r
  else
    puts q * (d/q + 1) + r
  end
end
