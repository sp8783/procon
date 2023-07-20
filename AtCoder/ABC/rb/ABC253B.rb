h, w = gets.split.map(&:to_i)
at = []
h.times do |i|
  s = gets.chomp.chars
  w.times do |j|
    if s[j] == "o"
      at << [i,j]
    end
  end
end

puts (at[0][0] - at[1][0]).abs + (at[0][1] - at[1][1]).abs
