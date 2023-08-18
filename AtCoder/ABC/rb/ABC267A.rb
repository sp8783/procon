s = gets.to_s.chomp
hash = {
  "Monday" => 5,
  "Tuesday" => 4,
  "Wednesday" => 3,
  "Thursday" => 2,
  "Friday" => 1
}
puts hash[s]
