n = gets.to_i
area = n.times.map{gets.split.map(&:to_i)}

arr = Array.new(100) { Array.new(100, false) }
area.each do |areaa|
  a, b, c, d = areaa
  i = a
  while i < b
    j = c
    while j < d
      arr[i][j] = true
      j += 1
    end
    i += 1
  end
end

puts arr.flatten.count(true)
