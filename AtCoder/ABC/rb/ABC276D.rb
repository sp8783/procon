require 'prime'

n = gets.to_i
a_lst = gets.split.map(&:to_i)

gcd = a_lst[0]
a_lst.each do |a|
  gcd = gcd.gcd(a)
end

ans = 0
flag = true

a_lst.each do |a|
  a /= gcd
  lst = a.prime_division
  lst.each do |prime, cnt|
    if prime == 2 || prime == 3
      ans += cnt
    else
      flag = false
      ans = -1
      break
    end
  end
  break unless flag
end

puts ans
