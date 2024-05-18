P = gets.to_f

if P*Math.log(2) >= 1.5
  ans = 3*Math.log2(2*P*Math.log(2)/3)/2 + 3/(2*Math.log(2))
else
  ans = P
end

puts ans
