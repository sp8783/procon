require 'numo/narray'

H, W = gets.split.map(&:to_i)
K = gets.to_i
grid = Numo::UInt8.zeros(H + 1, W + 1)

(1..H).each do |i|
  line = gets.chomp
  grid[i, 1..W] = line.bytes
end

queries = []
K.times do
  queries.concat(gets.split.map(&:to_i))
end

J = (grid.eq('J'.ord).cast_to(Numo::Int32)).cumsum(0).cumsum(1)
O = (grid.eq('O'.ord).cast_to(Numo::Int32)).cumsum(0).cumsum(1)

results = []
(0...K).each do |k|
  a, b, c, d = queries[4 * k, 4]
  a -= 1
  b -= 1
  j_count = J[c, d] + J[a, b] - J[c, b] - J[a, d]
  o_count = O[c, d] + O[a, b] - O[c, b] - O[a, d]
  i_count = (c - a) * (d - b) - j_count - o_count
  results << "#{j_count.to_i} #{o_count.to_i} #{i_count.to_i}"
end

puts results.join("\n")
