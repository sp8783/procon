n, m = gets.split.map(&:to_i)
S = gets.chomp.split
T = gets.chomp.split

idx = 0

S.each do |s|
  if s == T[idx]
    puts "Yes"
    idx += 1
  else
    puts "No"
  end
end
