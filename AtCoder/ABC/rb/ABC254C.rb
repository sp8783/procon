n,k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
srt = [0]*n

k.times do |i|
  ar = []
  idx = 0
  while i + idx < n
    ar << arr[i+idx]
    idx += k
  end
  ar.sort!
  ar.each_with_index do |val,idx|
    srt[i+k*idx] = val
  end
end
puts arr.sort == srt ? "Yes":"No"
