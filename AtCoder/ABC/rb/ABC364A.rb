n = gets.to_i
s = n.times.map { gets.chomp }

ans = "Yes"
flag = false
s.each_cons(2) do |a, b|
  if flag
    ans = "No"
  end

  if a == "sweet" && b == "sweet"
    flag = true
  end
end

puts ans
