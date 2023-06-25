arr = gets.split.map(&:to_i)

ans = 0
arr.each_with_index do |a, i|
  ans += a * (2 ** i)
end

puts ans
