n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = (1..10**9).bsearch { |x| A.sum { |a| x / a } >= k }
puts ans
