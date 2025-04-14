MOD = 10**9

n, k = gets.split.map(&:to_i)
a = Array.new(n + 1, 0)
sum = k

(n+1).times do |i|
  if i < k
    a[i] = 1
  else
    a[i] = sum
    sum += a[i] - a[i - k]
    sum %= MOD
  end
end

puts a[-1]
