s,t,x = gets.split.map(&:to_i)

ans = "No"
if s < t
  if s <= x && x < t
    ans = "Yes"
  end
else
  if s <= x || x < t
    ans = "Yes"
  end
end

puts ans
