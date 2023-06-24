n = gets.to_i
S = n.times.map{gets.chomp}

ans = "No"
lst = (0...n).to_a.permutation(2).to_a
lst.each do |i, j|
  s = S[i] + S[j]
  flag = true
  (s.size / 2).times do |k|
    if s[k] != s[-k-1]
      flag = false
      break
    end
  end
  if flag
    ans = "Yes"
    break
  end
end

puts ans
