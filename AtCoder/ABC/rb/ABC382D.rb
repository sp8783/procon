n, m = gets.split.map(&:to_i)

baffa = m - (1 + 10*(n-1))
if baffa < 0
  puts 0
  exit
end

cnt = 0
ans = []
(1..(baffa+1)).to_a.repeated_combination(n) do |comb|
  tmp = []
  comb.each_with_index do |c, i|
    tmp << c + 10 * i
  end
  ans << tmp
  cnt += 1
end

puts cnt
ans.each do |a|
  puts a.join(' ')
end
