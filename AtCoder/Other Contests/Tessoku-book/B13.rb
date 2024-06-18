# n, k = gets.split.map(&:to_i)
# A = gets.split.map(&:to_i)

# r = 0
# ans = sum = 0
# n.times do |l|
#   while r < n && sum + A[r] <= k
#     sum += A[r]
#     r += 1
#   end
#   ans += r - l
#   sum -= A[l]
# end

# puts ans

n, k = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)

num = 0
sum = [0] + ary.map {|i| num += i}
p sum

r = 0
count = 0
n.times do |l|
  while sum[r+1] - sum[l] <= k && r < n - 1
    r += 1
  end
  p "l:#{l} r:#{r}, len:#{r-l}"
  len = r - l
  count += len
end

puts count

# l = 0
# 11 r=1
# 11 12 r=2
# 11 12 16 r=3
# l = 1
# 12 r=2
# 12 16 r=3
# 12 16 22 r=4
# l = 2
# 16 r=3
# 16 22 r=4
# l = 3
# 22 r=4
# 22 27 r=5
# l = 4
# 27 r=5
# l = 5
# 28 r=6
# l = 6
# 31 r=7

# n, k = gets.split.map(&:to_i)
# a = gets.split.map(&:to_i)

# i = 0
# s = [i] + a.map { i += _1 }
# p s

# ans = 0
# r = 0
# n.times do |l|
#   r += 1 while  r < n && s[r+1] - s[l] <= k

#   ans += r - l
# end

# p ans
