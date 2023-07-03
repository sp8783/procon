H, W = gets.split.map(&:to_i)
arr = H.times.map{gets.split.map(&:to_i)}

ans = []
W.times do |w|
  ar = []
  H.times do |h|
    ar << arr[h][w]
  end
  ans << ar
end

ans.each do |a|
  puts a.join(' ')
end
