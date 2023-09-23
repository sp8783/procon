n,a,b = gets.split.map(&:to_i)
s = gets.chomp.chars

ans = 10**20
(0...n).each do |i|
  res = a*i
  cnt = 0
  (0..(n/2.0).ceil-1).each do |j|
    cnt += 1 if s[j] != s[-j-1]
  end
  res += b*cnt
  ans = res if ans > res
  s = s[1...n] + [s[0]]
  # p cnt
  # p ans
end

puts ans
