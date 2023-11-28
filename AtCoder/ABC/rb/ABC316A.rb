n, h, x = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

P.each_with_index do |p, i|
  if p + h >= x
    puts i + 1
    exit
  end
end
