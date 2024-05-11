n = gets.to_i
h = gets.split.map(&:to_i)

h0 = h[0]
ans = -1
h.each_with_index do |hi, i|
  if h0 < hi
    ans = i+1
    break
  end
end

puts ans
