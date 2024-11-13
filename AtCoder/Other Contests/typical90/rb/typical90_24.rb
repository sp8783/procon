n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

diff = 0

n.times do |i|
  ai, bi = a[i], b[i]
  diff += (ai - bi).abs
end

if diff == k || (diff < k && (k - diff).even?)
  puts "Yes"
else
  puts "No"
end
