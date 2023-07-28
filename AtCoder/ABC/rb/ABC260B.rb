n,x,y,z = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

arr = []
ans = []
n.times do |i|
  arr << [A[i], B[i], A[i]+B[i], i+1]
end

arr = arr.sort_by { |x| [-x[0], x[3]] }
x.times do
  ans << arr.shift[3]
end

arr = arr.sort_by { |x| [-x[1], x[3]] }
y.times do
  ans << arr.shift[3]
end

arr = arr.sort_by { |x| [-x[2], x[3]] }
z.times do
  ans << arr.shift[3]
end

puts ans.sort
