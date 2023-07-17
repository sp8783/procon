require "set"
n = gets.to_i

set = Set.new
point = 0
ans = 0

(1..n).each do |i|
  s, t = gets.split
  t = t.to_i

  unless set.include?(s)
    set.add(s)
    if point < t
      point = t
      ans = i
    end
  end
end

puts ans
