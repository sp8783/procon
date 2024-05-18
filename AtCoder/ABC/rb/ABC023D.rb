n = gets.to_i
hs = n.times.map { gets.split.map(&:to_i) }

ans = (1..10**15).bsearch do |x|
  a = hs.map { |h, s| (x - h) / s }.sort
  (0...n).all? { |i| a[i] >= i }
end

puts ans
