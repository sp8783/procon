n, m = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

ans = []
tmp = []
idx = 0
(1..n).each do |a|
  if a == P[idx]
    tmp << a
    idx += 1
  else
    ans << a
    if tmp.length != 0
      ans += tmp.reverse
      tmp = []
    end
  end
end

puts ans.join(" ")
