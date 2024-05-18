a,b,c,d = gets.split.map(&:to_i)

square = [
  [2,1,0,1],
  [1,2,1,0]
]

# 偶数行
row_even = 0
if a > 0
  row_even -= square[0][0...a%4].sum + 4*(a/4)
else
  row_even += square[0].reverse[0...a.abs%4].sum + 4*(a.abs/4)
end
if c > 0
  row_even += square[0][0...c%4].sum + 4*(c/4)
else
  row_even -= square[0].reverse[0...c.abs%4].sum + 4*(c.abs/4)
end

# 奇数行
row_odd = 0
if a > 0
  row_odd -= square[1][0...a%4].sum + 4*(a/4)
else
  row_odd += square[1].reverse[0...a.abs%4].sum + 4*(a.abs/4)
end
if c > 0
  row_odd += square[1][0...c%4].sum + 4*(c/4)
else
  row_odd -= square[1].reverse[0...c.abs%4].sum + 4*(c.abs/4)
end

ans = (row_even + row_odd) * ((d - b).abs/2)
if (d - b).abs.odd?
  if b.abs.even?
    ans += row_even
  else
    ans += row_odd
  end
end
puts ans
