n, m = gets.split.map(&:to_i)
set = Set.new(1..n)

m.times do
  a, b = gets.split.map(&:to_i)
  set.delete(b)
end

puts set.size == 1 ? set.first : -1
