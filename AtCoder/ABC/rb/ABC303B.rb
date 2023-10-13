n, m = gets.split.map(&:to_i)
arr = m.times.map {gets.split.map(&:to_i)}

set = Set.new((1..n).to_a.combination(2).to_a)

arr.each do |ar|
  ar.each_cons(2) do |pair|
    set.delete(pair.sort)
  end
end

puts set.size
