n = gets.to_i
p = gets.split.map(&:to_i)
a = p[-1]
count=1
while a != 1
  a = p[a-2]
  count+=1
end
puts count
