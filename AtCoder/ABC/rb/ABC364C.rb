n, x, y = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort.reverse
B = gets.split.map(&:to_i).sort.reverse

ans = n
a_sum = 0
A.each_with_index do |a, i|
  a_sum += a
  if a_sum > x
    ans = i+1
    break
  end
end

b_sum = 0
B.each_with_index do |b, i|
  b_sum += b
  if b_sum > y
    ans = [ans, i+1].min
    break
  end
end

puts ans
