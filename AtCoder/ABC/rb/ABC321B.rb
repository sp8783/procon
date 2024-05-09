n, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

ans = (0..100).find do |i|
  xs = as + [i]
  xs.sort!
  score = xs.sum - xs[0] - xs[-1]
  score >= x
end

puts ans || -1
