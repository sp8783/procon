n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

r = 0
ans = sum = 0
n.times do |l|
  while r < n && sum + A[r] <= k
    sum += A[r]
    r += 1
  end
  ans += r - l
  sum -= A[l]
end

puts ans
