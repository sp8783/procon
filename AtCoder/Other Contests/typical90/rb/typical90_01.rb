n, l = gets.split.map(&:to_i)
k = gets.to_i
A = [0] + gets.split.map(&:to_i) + [l]

ans = (1..l).bsearch do |x|
  cut = 0
  tmp = 0
  A.each_cons(2) do |a1, a2|
    tmp += a2 - a1
    if tmp > x
      tmp = 0
      cut += 1
    end
  end
  # p "x: #{x}, cut: #{cut}"
  cut <= k
end

puts ans
