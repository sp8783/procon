n, k = gets.split.map(&:to_i)

ans = 0
(1..n).each do |i|
  (1..n).each do |j|
    ans += 1 if k-i-j <= n && k-i-j >= 1
  end
end

puts ans
