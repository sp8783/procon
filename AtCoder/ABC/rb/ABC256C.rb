h1,h2,h3,w1,w2,w3 = gets.split.map(&:to_i)
ans = 0
(1..[h1-2, w1-2].min).each do |a11|
  (1..h1-a11-1).each do |a12|
    (1..w1-a11-1).each do |a21|
      (1..[h2-a21-1, w2-a12-1].min).each do |a22|
        a13 = h1 - a11 - a12
        a23 = h2 - a21 - a22
        a31 = w1 - a11 - a21
        a32 = w2 - a12 - a22
        if h3 - a31 - a32 == w3 - a13 - a23 && h3 - a31 - a32 > 0
          ans += 1
          # puts [a11,a12,a13].join(" ")
          # puts [a21,a22,a23].join(" ")
          # puts [a31,a32,h3 - a31 - a32].join(" ")
        end
      end
    end
  end
end

puts ans
