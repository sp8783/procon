t = gets.to_i
n = gets.to_i

timeshift = Array.new(t+1, 0)
n.times do
  l, r = gets.split.map(&:to_i)
  timeshift[l] += 1
  timeshift[r] -= 1
end

t.times do |i|
  timeshift[i+1] += timeshift[i]
  puts timeshift[i]
end
