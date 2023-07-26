n ,q = gets.split.map(&:to_i)
s = gets.chomp

idx = 0
q.times do
  query, x = gets.split.map(&:to_i)
  if query == 1
    idx += x
  else
    puts s[(x-1-idx)%n]
  end
end
