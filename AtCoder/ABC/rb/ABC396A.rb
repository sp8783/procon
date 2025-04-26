n = gets.to_i
a = gets.split.map(&:to_i)

a.each_cons(3) do |x, y, z|
  if x == y && y == z
    puts "Yes"
    exit
  end
end

puts "No"
