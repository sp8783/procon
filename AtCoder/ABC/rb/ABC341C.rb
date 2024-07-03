h, w, n = gets.split.map(&:to_i)
moves = gets.chomp.chars
field = h.times.map{gets.chomp.tr(".#", "10")}.join.to_i(2)

dic = {"L" => -1, "R" => 1, "U" => -w, "D" => w}

f = field
d = 0
moves.each do |move|
  d += dic[move]
  next_f = field << d
  f &= next_f
end

puts f.to_s(2).count("1")
