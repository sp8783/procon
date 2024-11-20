n, k = gets.split.map(&:to_i)

arr = Array.new(n+1, 0)
ans = 0
i = 2
while i <= n
  if arr[i] == 0
    j = i
    while j <= n
      arr[j] += 1
      j += i
    end
  end
  ans += 1 if arr[i] >= k
  i += 1
end

# p arr
puts ans
