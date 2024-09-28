n = gets.to_i
A = gets.split.map(&:to_i)

t = 0

A.each do |a|
  num = a/5
  t += num*3
  a -= num*5
  while a > 0
    t += 1
    if t % 3 == 0
      a -= 3
    else
      a -= 1
    end
  end
end

puts t
