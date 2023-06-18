require "set"

n = gets.to_i
L = []
ary = []
n.times do |i|
  l, *a = gets.split.map(&:to_i)
  L << l
  ary << a
end

puts ary.to_set.size
