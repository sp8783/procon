n = gets.to_i
S = []
A = []
n.times do
  s, a = gets.chomp.split
  S << s
  A << a.to_i
end

i = A.index(A.min)
puts (S*2)[i...i+n].join("\n")
