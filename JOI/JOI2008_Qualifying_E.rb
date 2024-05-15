r, c = gets.split.map(&:to_i)
senbei = r.times.map { gets.split.map(&:to_i) }

ans = 0
[0, 1].repeated_permutation(r) do |bits|
  tmp = Array.new(r)
  senbei.each_with_index do |row, i|
    tmp[i] = row.map.with_index { |s, j| bits[i] == 1 ? 1 - s : s }
  end
  
  tmp = tmp.transpose
  cnt = tmp.map { |row| [row.count(0), row.count(1)].max }.sum
  ans = [ans, cnt].max
end

puts ans
