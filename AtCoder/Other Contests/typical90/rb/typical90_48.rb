n, k = gets.split.map(&:to_i)
lst = []

n.times do
  a, b = gets.split.map(&:to_i)
  lst << b
  lst << (a - b)
end

lst = lst.sort.reverse
puts lst[0...k].sum
