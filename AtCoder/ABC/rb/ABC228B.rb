n, x = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).to_a

arr = Array.new(n, false)
i = x - 1
ans = 0

while !arr[i]
  arr[i] = true
  ans += 1

  i = A[i] - 1
end

puts ans
