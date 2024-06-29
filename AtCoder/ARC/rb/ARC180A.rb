n = gets.to_i
str = gets.chomp.chars

MOD = 10**9 + 7

ans = 1
len = 1

# p "ans: #{ans}, len: #{len}"
str.each_cons(2) do |s1, s2|
  if s1 == s2
    ans *= (len+1)/2
    ans %= MOD
    len = 1
  else
    len += 1
  end
  # p "ans: #{ans}, len: #{len}"
end

ans *= (len+1)/2
ans %= MOD

puts ans
