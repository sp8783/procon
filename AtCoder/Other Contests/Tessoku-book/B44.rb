n = gets.to_i
A = n.times.map { gets.split.map(&:to_i) }
q = gets.to_i

hash = (0...n).map { |i| [i, i] }.to_h
q.times do
  query, x, y = gets.split.map(&:to_i)
  case query
  when 1
    hash[x-1], hash[y-1] = hash[y-1], hash[x-1]
  when 2
    puts A[hash[x-1]][y-1]
  end
end
