k = gets.to_i
queens = k.times.map { gets.split.map(&:to_i) }

(0...8).to_a.permutation(8) do |perm|
  point = (0...8).to_a.zip(perm)
  if queens.all? { |q| point.include?(q) } && point.combination(2).all? { |a, b| (a[0] - b[0]).abs != (a[1] - b[1]).abs }
    puts point.map { |_, y| '.' * y + 'Q' + '.' * (7 - y)}.join("\n")
    exit
  end
end
