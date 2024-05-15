n = gets.to_i
town = n.times.map { gets.split.map(&:to_i) }

lst = []

(0...n).to_a.permutation(n) do |perm|
  lst << perm.each_cons(2).map { |a, b| Math.sqrt((town[a][0] - town[b][0])**2 + (town[a][1] - town[b][1])**2) }.sum
end

puts lst.sum / lst.size.to_f
