n = gets.to_i

grid = Array.new(n) { Array.new(n, ".") }

(1..n).each do |i|
  j = n + 1 - i
  next if i > j

  color = (i.odd? ? "#" : ".")
  (i-1..j-1).each do |row|
    (i-1..j-1).each do |col|
      grid[row][col] = color
    end
  end
end

grid.each { |row| puts row.join }
