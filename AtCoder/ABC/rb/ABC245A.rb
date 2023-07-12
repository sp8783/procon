a,b,c,d = gets.split.map(&:to_i)

ans = "Aoki"
if a < c || (a == c && b <= d)
  ans = "Takahashi"
end

puts ans
