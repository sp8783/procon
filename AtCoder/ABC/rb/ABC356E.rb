n = gets.to_i
A = gets.split.map(&:to_i)
counter = Array.new(10**6 + 10, 0)
A.each do |a|
  counter[a] += 1
end

(0...10**6 + 9).each do |i|
  counter[i + 1] += counter[i]
end

ans = 0
(1..10**6).each do |c|
  d = counter[c] - counter[c - 1]
  kc = c
  while kc <= 10**6
    k = kc / c
    ans += k * (counter[[10**6, kc + c - 1].min] - counter[kc - 1]) * d
    kc += c
  end
  ans -= d * (d + 1) / 2
end

puts ans
