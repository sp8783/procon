n = gets.to_i
s = gets.chomp

ans = 1
n.times do |i|
  if s[i] == "/"
    l = i - 1
    r = i + 1
    while l >= 0 && r < n && s[l] == "1" && s[r] == "2"
      l -= 1
      r += 1
    end
    ans = [ans, r - l - 1].max
  end
end

puts ans
