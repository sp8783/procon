n,x,y = gets.split.map(&:to_i)

r = Array.new(n+1){0}
b = Array.new(n+1){0}
r[1] = 0
b[1] = 1

(1..n).each do |i|
  if i == 1
    r[i] = 0
    b[i] = 1
  else
    b[i] = r[i-1] + b[i-1]*y
    r[i] = r[i-1] + b[i]*x
  end
end

puts r[-1]
