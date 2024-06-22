n = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
(2*n-2).times do |i|
  ans += 1 if A[i] == A[i+2]
end

puts ans
