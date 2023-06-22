_n = gets.to_i
S = gets.split.map(&:to_i)

def func(a,b)
  4*a*b + 3*a + 3*b
end

ans = 0
S.each do |s|
  a = 1
  b = 1
  flag = false
  catch :match do
    while func(a,b) <= s
      while func(a,b) <= s
        if func(a,b) == s
          flag = true
          throw :match
        end
        b += 1
      end
      a += 1
      b = 1
    end
  end
  ans += 1 unless flag
end

puts ans
