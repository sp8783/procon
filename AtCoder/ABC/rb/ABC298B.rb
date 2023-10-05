n = gets.to_i
a = n.times.map { gets.chomp.split.map(&:to_i) }
b = n.times.map { gets.chomp.split.map(&:to_i) }

flg = false
(0...4).each do
  a = a.transpose.map(&:reverse)
  flg |= a.flatten.zip(b.flatten).all?{ _1 == 1 ? _2 == 1 : true } 
end

puts flg ? 'Yes' : 'No'
