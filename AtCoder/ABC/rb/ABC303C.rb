n, m, h, k = gets.split.map(&:to_i)
S = gets.chomp.chars
heal = Set.new(m.times.map {gets.split.map(&:to_i)})

dxy = {
  "R" => [1, 0],
  "L" => [-1, 0],
  "U" => [0, 1],
  "D" => [0, -1]
}

now = [0, 0]
S.each do |s|
  now = now.zip(dxy[s]).map(&:sum)
  h -= 1

  if h < 0
    puts "No"
    exit
  end

  if heal.include?(now) && h < k
    h = k
    heal.delete(now)
  end
end

puts "Yes"
