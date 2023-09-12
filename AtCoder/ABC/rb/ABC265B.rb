n, m, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
m.times do
 x, y = gets.split.map(&:to_i)
 a[x-1] -= y 
end

ans = 'Yes'

(n-1).times do |i|
  t -= a[i]
  break ans = 'No' if t <= 0
end

puts ans
