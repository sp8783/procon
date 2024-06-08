# 尺取法
n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

r = 0
ans = 0

n.times do |l|
  while r < n - 1 && A[r+1] - A[l] <= k
    r += 1
  end
  ans += r - l
end

puts ans

# 二分探索
n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = 0
A.each_with_index do |ai, l|
  r = A.bsearch_index {|aj| aj - ai > k} || n
  ans += r - l - 1
end

puts ans
