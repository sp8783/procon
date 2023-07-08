a, b = gets.split.map(&:to_i)

ans = "No"

if b - a == 1 && a % 3 != 0
  ans = "Yes"
end

puts ans
