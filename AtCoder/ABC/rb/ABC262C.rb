n = gets.to_i
arr = gets.split.map(&:to_i)
memo = Array.new(n,false)

x = 0
y = 0
arr.each_with_index do |a, i|
  if a == i+1
    x += 1
  else 
    if arr[a-1] == i+1 && !memo[a-1]
      y += 1
      memo[a-1] = true
      memo[arr[a-1]-1] = true
    end
  end
end

puts x*(x-1)/2 + y
