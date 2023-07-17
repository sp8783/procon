require "set"

n, w = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
set = Set.new
(1..3).each do |i|
  a.combination(i) do |tmp|
    sum = tmp.sum
    set.add sum if sum <= w
  end
end
puts set.size
