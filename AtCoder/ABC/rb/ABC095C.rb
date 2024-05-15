a,b,c,x,y = gets.split.map(&:to_i)

ans = [a*x + b*y, 2*c*x + b*[y-x,0].max, 2*c*y + a*[x-y,0].max].min
puts ans
