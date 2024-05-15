n = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

lst = (1..n).to_a.permutation(n).to_a
a = lst.index(P)
b = lst.index(Q)

puts (a - b).abs
