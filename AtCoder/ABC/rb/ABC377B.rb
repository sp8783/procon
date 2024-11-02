row = (0..7).to_a
col = (0..7).to_a

8.times do |i|
  s = gets.chomp.chars
  unless s.all? { |c| c == "." }
    row.delete(i)
    s.each_with_index do |c, j|
      col.delete(j) if c == "#"
    end
  end
end

puts row.length * col.length
