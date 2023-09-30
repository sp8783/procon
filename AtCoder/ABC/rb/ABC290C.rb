n, k = gets.split.map(&:to_i)
set = Set.new(gets.split.map(&:to_i))

arr = set.to_a.sort
k.times do |i|
  if arr[i] != i
    return puts i
  end
end

puts k
