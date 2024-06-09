n, m = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

sum = 0
ans = n
H.each_with_index do |h, i|
  sum += h
  if sum > m
    ans = i
    break
  end
end

puts ans
