n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
arr = n.times.map{gets.split.map(&:to_i)}

d = []
n.times do |i|
  if A.include?(i+1)
    next
  end
  tmp = 10**10
  A.each do |a|
    a -= 1
    if i == a
      next
    end
    tmp = [Math.hypot(arr[a][0] - arr[i][0], arr[a][1] - arr[i][1]), tmp].min
  end
  d << tmp
end

puts d.max
