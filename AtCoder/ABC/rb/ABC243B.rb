n = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

v2 = A.size + B.size - (A+B).uniq.size
v1 = 0
A.zip(B) do |a, b|
  if a == b
    v1 += 1
    v2 -= 1
  end
end

puts v1
puts v2
