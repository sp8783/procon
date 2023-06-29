k = gets.to_i

ans = ""

(0..60).to_a.reverse.each do |i|
  if 2**i <= k
    ans += "2"
    k -= 2**i
  elsif ans.length != 0
    ans += "0"
  end
end

if ans.length == 0
  ans = "0"
end
puts ans
