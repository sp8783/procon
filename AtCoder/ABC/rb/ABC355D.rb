n = gets.to_i
points = []
n.times do 
  l, r = gets.split.map(&:to_i)
  points << [l,0]
  points << [r+0.1, 1]
end

points.sort_by!(&:first)

cnt = 0
ans = 0

points.each do |point, type|
  if type == 0
    ans += cnt
    cnt += 1
  else
    cnt -= 1
  end
end

puts ans
