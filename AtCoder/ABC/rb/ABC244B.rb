n = gets.to_i
T = gets.chomp.chars

x, y = 0, 0
dxy = [[1, 0], [0, -1], [-1, 0], [0, 1]]
idx = 0

T.each do |t|
  if t == "S"
    dx, dy = dxy[idx % 4]
    x += dx
    y += dy
  else
    idx += 1
  end
end

puts "#{x} #{y}"
