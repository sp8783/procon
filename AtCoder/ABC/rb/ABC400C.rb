def isqrt(x)
  (0..).bsearch { |i| i**2 > x } - 1
end

n = gets.to_i
puts isqrt(n/4) + isqrt(n/2)
