n = gets.to_i
a = gets.split.map(&:to_i)
hash = a.tally

former = 0
latter = hash.keys.length
ans = latter
set = Set.new

a.each do |i|
  former += 1 unless set.include?(i)
  set.add(i)

  hash[i] -= 1
  latter -= 1 if hash[i] == 0

  ans = [ans, former + latter].max
end

puts ans
