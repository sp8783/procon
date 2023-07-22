n = gets.to_i
A = gets.split.map(&:to_i)

memo = [false]*(n)
arr = [A[0]]
now = A[0]

while !memo[now-1]
  arr << A[now-1]
  memo[now-1] = true
  now = A[now-1]
end

ans = arr[arr.index(now)..-2]
puts ans.size
puts ans.join(" ")
