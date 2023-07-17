n, a, b = gets.split.map(&:to_i)

n.times do |i|
  line = ''
  n.times do |j|
    if i%2 == 1
      if j%2 == 1
        line += '.'*b
      else
        line += '#'*b
      end
    else
      if j%2 == 1
        line += '#'*b
      else
        line += '.'*b
      end
    end
  end
  a.times do
    puts line
  end
end
