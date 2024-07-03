n,s,m,l = gets.split.map(&:to_i)

ans = 10**10

18.times do |si|
  14.times do |mi|
    10.times do |li|
      next if si*6 + mi*8 + li*12 < n
      ans = [ans, s*si + m*mi + l*li].min
    end
  end
end

puts ans
