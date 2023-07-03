n = gets.to_i
A = gets.split.map(&:to_i)

arr = [0]
A.each do |a|
  arr << (arr[-1] + a) % 360
end
arr << 360
arr.sort!

ans = 0
(0..n).each do |i|
  ans = [ans, arr[i+1] - arr[i]].max
end

puts ans
