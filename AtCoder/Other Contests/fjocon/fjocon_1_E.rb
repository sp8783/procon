r1, c1 = gets.split.map(&:to_i)
r2, c2 = gets.split.map(&:to_i)

ans = 3

if r1 == r2 && c1 == c2
  ans = 0
elsif r1 + c1 == r2 + c2 || r1 - c1 == r2 - c2 || (r1 - r2).abs + (c1 - c2).abs <= 3
  ans = 1
elsif (r1 + c1 + r2 + c2).even? || (r1 - r2).abs + (c1 - c2).abs <= 6 || (c2 - c1 - r2 + r1).abs <= 3 || (c2 - c1 + r2 - r1).abs <= 3
  ans = 2
end

puts ans
