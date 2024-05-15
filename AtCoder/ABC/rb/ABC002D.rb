n, m = gets.split.map(&:to_i)
pair = m.times.map { gets.split.map(&:to_i) }

ans = 0
[0, 1].repeated_permutation(n) do |bits|
  if (0...n).to_a.combination(2).all? { |x, y| bits[x] == 1 && bits[y] == 1 ? pair.include?([x+1, y+1]) : true }
    ans = [ans, bits.count(1)].max
  end
end

puts ans
