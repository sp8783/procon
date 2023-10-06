h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp.chars }
b = h.times.map { gets.chomp.chars }

ans = "No"
(0..h).each do
  (0..w).each do
    a = a.map { |row| row.rotate }
    if a == b
      ans = "Yes"
    end
  end
  a.rotate!
end

puts ans
