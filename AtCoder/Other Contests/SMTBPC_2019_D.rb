n = gets.to_i
S = gets.chomp

ans = 0
10.times do |i|
  a = S.index(i.to_s)
  unless a.nil?
    10.times do |j|
      b = S.index(j.to_s, a + 1)
      unless b.nil?
        10.times do |k|
          c = S.index(k.to_s, b + 1)
          unless c.nil?
            ans += 1
          end
        end
      end
    end
  end
end

puts ans
