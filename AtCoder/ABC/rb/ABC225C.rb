n, m = gets.split(" ").map(&:to_i)
ary = n.times.map{gets.split.map(&:to_i)}

z = ary[0][0]
ans = "Yes"
n.times do |i|
  m.times do |j|
    if ary[i][j] != z + i*7 + j || (ary[i][j]%7 == 1 && j != 0)
      ans = "No"
    end
  end
end

puts ans
