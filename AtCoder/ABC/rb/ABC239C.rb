x1, y1, x2, y2 = gets.split.map(&:to_i)

arr = [
  [1,2],
  [1,-2],
  [-1,2],
  [-1,-2],
  [2,1],
  [2,-1],
  [-2,1],
  [-2,-1],
]

ans = "No"
arr.each do |dx, dy|
  arr.each do |ddx, ddy|
    if x1 + dx + ddx == x2 && y1 + dy + ddy == y2
      ans = "Yes"
    end
  end
end

puts ans
