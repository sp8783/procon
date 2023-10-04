n, d = gets.split.map(&:to_i)
T = gets.split.map(&:to_i)

ans = -1
T.each_cons(2) do |t1, t2|
  if t2 - t1 <= d
    ans = t2
    break
  end
end

puts ans
