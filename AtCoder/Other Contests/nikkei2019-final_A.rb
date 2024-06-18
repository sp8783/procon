n = gets.to_i
A = gets.split.map(&:to_i)

A_cum = [0]
A.each do |a|
  A_cum << A_cum[-1] + a
end
A.shift

(1..n).each do |i|
  ans = 0
  (0..n-i).each do |j|
    ans = [ans, A_cum[j+i] - A_cum[j]].max
  end
  puts ans
end
