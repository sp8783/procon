n = gets.to_i
k = gets.split.map(&:to_i)

ans = k.sum
(1 << n).times do |i|
  sum = 0
  n.times do |j|
    sum += k[j] if i[j] == 1
  end
  tmp = [sum, k.sum - sum].max
  ans = tmp if tmp < ans
end

puts ans
