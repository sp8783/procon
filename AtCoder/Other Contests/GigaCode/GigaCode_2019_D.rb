require 'numo/narray'

h, w, k, v = gets.split.map(&:to_i)
A = Numo::Int64.zeros(h+1, w+1)
(1..h).each do |i|
  A[i, 1..w] = gets.split.map(&:to_i)
end
cum = A.cumsum(0).cumsum(1)

ans = 0
(1..h).each do |a|
  (1..w).each do |b|
    (a..h).each do |c|
      (b..w).bsearch do |d|
        area = (c - a + 1) * (d - b + 1)
        s = cum[c, d] - cum[a-1, d] - cum[c, b-1] + cum[a-1, b-1]
        if s + area * k <= v
          ans = [ans, area].max
          false
        else
          true
        end
      end
    end
  end
end

puts ans
