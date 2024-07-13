xy = 3.times.map { gets.split.map(&:to_i) }

vec_ab = [xy[1][0] - xy[0][0], xy[1][1] - xy[0][1]]
vec_bc = [xy[2][0] - xy[1][0], xy[2][1] - xy[1][1]]
vec_ca = [xy[0][0] - xy[2][0], xy[0][1] - xy[2][1]]

flag = [vec_ab, vec_bc, vec_ca].combination(2).any? do |(x1, y1), (x2, y2)|
  x1*x2 + y1*y2 == 0
end

if flag
  puts "Yes"
else
  puts "No"
end
