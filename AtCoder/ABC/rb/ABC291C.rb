n = gets.to_i
S = gets.chomp.chars

hash = {
  "R" => [1,0],
  "L" => [-1,0],
  "U" => [0,1],
  "D" => [0,-1]
}

now = [0, 0]
set = Set.new([now])

ans = "No"
S.each do |s|
  dx, dy = hash[s]
  now = [now[0]+dx, now[1]+dy]
  if set.include?(now)
    puts "Yes"
    exit
  else
    set.add(now)
  end
end

puts "No"
