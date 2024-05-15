n = gets.to_i
A = Array.new(n)
B = Array.new(n)
n.times do |i|
  A[i], B[i] = gets.split.map(&:to_i)
end

Start = A.sort[n/2]
Goal = B.sort[n/2]

ans = 0
n.times do |i|
  ans += (A[i] - Start).abs + B[i] - A[i] + (B[i] - Goal).abs
end

puts ans
