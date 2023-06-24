n, w = gets.split.map(&:to_i)
arr = n.times.map{gets.split.map(&:to_i)}
arr = arr.sort.reverse

ans = 0
arr.each do |a, b|
  if b > w
    ans += a * w
    break
  else
    ans += a * b
    w -= b
  end
end

puts ans
