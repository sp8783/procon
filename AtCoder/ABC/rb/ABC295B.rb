R, C = gets.split.map(&:to_i)
grid = R.times.map{gets.chomp}
R.times do |i|
  C.times do |j|
    if grid[i][j] != "." && grid[i][j] != "#"
      power = grid[i][j].to_i
      grid[i][j] = "."
      R.times do |k|
        C.times do |l|
          grid[k][l] = "." if grid[k][l] == "#" && (i - k).abs + (j - l).abs <= power
        end
      end
    end
  end
end
R.times do |i|
  puts grid[i]
end
