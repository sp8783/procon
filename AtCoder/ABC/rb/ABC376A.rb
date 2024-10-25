# kaigionrails
n, c = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

ans = 1
t_last = t[0]

(1...n).each do |i|
  if t[i] - t_last >= c
    ans += 1
    t_last = t[i]
  end
end

puts ans
