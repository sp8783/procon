n, m = gets.split.map(&:to_i)
town = [0]
(n-1).times do
  town << gets.to_i + town[-1]
end

ans = 0
idx = 0
m.times do
  i = gets.to_i
  ans += (town[i+idx] - town[idx]).abs
  ans %= 10**5
  idx += i
end

puts ans
