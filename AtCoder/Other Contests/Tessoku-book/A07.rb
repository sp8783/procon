d = gets.to_i
n = gets.to_i

lst = Array.new(d+1) { 0 }
n.times do
  l, r = gets.split.map(&:to_i).map(&:pred)
  lst[l] += 1
  lst[r+1] -= 1
end

d.times do |i|
  lst[i+1] += lst[i]
  puts lst[i]
end
