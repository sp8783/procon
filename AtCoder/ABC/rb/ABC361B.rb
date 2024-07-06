a,b,c,d,e,f = gets.split.map(&:to_i)
g,h,i,j,k,l = gets.split.map(&:to_i)

if a > d
  a, d = d, a
  b, e = e, b
  c, f = f, c
end

if g > j
  g, j = j, g
  h, k = k, h
  i, l = l, i
end

x1 = [a, g].max
x2 = [d, j].min
y1 = [b, h].max
y2 = [e, k].min
z1 = [c, i].max
z2 = [f, l].min

if x1 < x2 && y1 < y2 && z1 < z2
  puts 'Yes'
else
  puts 'No'
end
