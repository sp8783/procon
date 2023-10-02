n, x = gets.split.map(&:to_i)
set = Set.new(gets.split.map(&:to_i))

set.each do |v|
  if set.include?(v+x)
    puts "Yes"
    exit
  end
end

puts "No"
