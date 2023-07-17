h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)

ans = 4

ans -= 1 if r == 1 || r == h
ans -= 1 if c == 1 || c == w
ans -= 1 if h == 1
ans -= 1 if w == 1

puts ans
