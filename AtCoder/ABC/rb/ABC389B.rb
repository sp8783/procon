x = gets.to_i

num = 1
ans = 1

(1..20).each do |i|
  num *= i
  if num == x
    ans = i
    break
  end
end

puts ans
