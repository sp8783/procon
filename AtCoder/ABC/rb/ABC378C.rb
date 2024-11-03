n = gets.to_i
a = gets.split.map(&:to_i)

hash = Hash.new(-1)
ans = []

a.each_with_index do |ai, i|
  ans << hash[ai]
  hash[ai] = i+1
end

puts ans.join(" ")
