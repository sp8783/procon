n = gets.to_i
arr = gets.split.map(&:to_i)

memo = [false]*n
arr.each_with_index do |a, i|
  memo[a-1] = true unless memo[i]
end

ans = []
memo.each_with_index do |m, i|
  ans << i+1 unless m
end

puts ans.size
puts ans.join(" ")
