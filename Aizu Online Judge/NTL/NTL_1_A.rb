require 'prime'

n = gets.to_i
prime = Prime.prime_division(n)
ans = []
prime.each do |i, k|
  ans += [i.to_s] * k
end

puts "#{n}: #{ans.join(' ')}"
