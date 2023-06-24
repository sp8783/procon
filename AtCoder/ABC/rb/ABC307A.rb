n = gets.to_i
arr = gets.split.map(&:to_i)

ans = []
arr.each_slice(7) do |a|
  ans << a.sum
end
puts ans.join(" ")
