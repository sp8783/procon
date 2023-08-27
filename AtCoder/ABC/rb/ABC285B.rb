n = gets.to_i
s = gets.chomp.chars

(1..n-1).each do |k|
  l = 0
  while l < n-k
    if s[l] != s[l+k]
      l += 1
    else
      break
    end
  end
  puts l
end
