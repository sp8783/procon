n = gets.to_i
H = gets.split.map(&:to_i)

ans = 0

H.each do |h|
  if ans < h
    ans = h
  else
    break
  end
end

puts ans
