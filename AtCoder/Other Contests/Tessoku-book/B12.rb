n = gets.to_i

def f(x)
  x**3 + x
end

l = 0.0
r = 100.0
ans = -1

20.times do
  mid = (l + r) / 2
  if f(mid) > n
    r = mid
  else
    l = mid
  end
  ans = mid
end

puts ans
