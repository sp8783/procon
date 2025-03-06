n = gets.to_i
a = gets.split.map(&:to_i)

flg = a.each_cons(2).all? do |x, y|
  x < y
end

puts flg ? 'Yes' : 'No'
