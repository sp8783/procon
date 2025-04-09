n = gets.to_i
a = gets.split.map(&:to_i)
hash = a.tally

ans = -1
max = -1
a.each_with_index do |v, i|
  if hash[v] == 1 && max < v
    ans = i + 1
    max = v
  end
end

puts ans
