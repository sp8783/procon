n = gets.to_i
arr = gets.split.map(&:to_i)

arr = arr.uniq.sort!

ans = arr.size
arr.each_with_index do |a, i|
  if a != i
    ans = i
    break
  end
end

puts ans
