n = gets.to_i
A = gets.split.map(&:to_i)

A.tally.each do |k, v|
  unless v % 4 == 0
    puts k
    break
  end
end
