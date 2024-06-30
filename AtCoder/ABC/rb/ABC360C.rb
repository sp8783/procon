n = gets.to_i
a = gets.split.map(&:to_i)
w = gets.split.map(&:to_i)

lst = Array.new(n) { 0 }
ans = 0

a.zip(w).each do |ai, wi|
  if lst[ai-1] < wi
    ans += lst[ai-1]
    lst[ai-1] = wi
  else
    ans += wi
  end
end

puts ans
