r,c = gets.split.map(&:to_i)

[*1..8].each do |i|
  if r == i || r == 16-i || c == i || c == 16-i
    if (i%2).odd?
      puts "black"
    else
      puts "white"
    end
    exit
  end
end
