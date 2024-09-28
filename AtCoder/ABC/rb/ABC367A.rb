a, b, c = gets.split.map(&:to_i)

ans = "No"

if b < c
  if a >= c || a < b
    ans = "Yes"
  end
else
  if a >= c && a < b
    ans = "Yes"
  end
end

puts ans
