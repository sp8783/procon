m = gets.to_i
stars = m.times.map { gets.split.map(&:to_i) }
n = gets.to_i
pictures = n.times.map { gets.split.map(&:to_i) }

pictures_set = pictures.to_set
pictures.each do |px, py|
  stars.each do |sx, sy|
    dx, dy = px - sx, py - sy
    if stars.all? { |x, y| pictures_set.include?([x + dx , y + dy]) }
      puts "#{dx} #{dy}"
      exit
    end
  end
end
