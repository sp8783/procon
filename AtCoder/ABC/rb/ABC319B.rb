n = gets.to_i

ans = ""
(n+1).times do |i|
  tmp = "-"
  (1..[n,9].min).each do |j|
    if n%j == 0 && i % (n/j) == 0
      tmp = j
      break
    end
  end
  ans += tmp.to_s
end

puts ans
