n, k = gets.split.map(&:to_i)

S = []
n.times do
  score = gets.split.map(&:to_i).to_a.sum
  S << score
end

S_sort = S.sort

S.each do |s|
  if s + 300 >= S_sort[-k]
    puts "Yes"
  else
    puts "No"
  end
end
