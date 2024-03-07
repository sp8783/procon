pair_s = gets.chomp.chars
pair_t = gets.chomp.chars

def dist(pair)
  dict = {
  "A" => 0,
  "B" => 1,
  "C" => 2,
  "D" => 3,
  "E" => 4,
  }
  dist = (dict[pair[0]] - dict[pair[1]]).abs
  if dist == 3
    2
  elsif dist == 4
    1
  else
    dist
  end
end

puts dist(pair_s) == dist(pair_t) ? "Yes" : "No"
