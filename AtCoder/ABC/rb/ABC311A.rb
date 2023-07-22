n = gets.to_i
S = gets.chomp.chars

flgs = {
  "A" => false,
  "B" => false,
  "C" => false,
}
S.each_with_index do |s, i|
  flgs[s] = true
  if flgs.values.all?
    puts i+1
    break
  end
end
