n = gets.to_i
a = []
memo = []
n.times do
  c = gets.to_i
  aa = gets.split.map(&:to_i)
  memo << c
  a << aa
end

x = gets.to_i
ans = Array.new(38){[]}
n.times do |i|
  if a[i].include?(x)
    ans[memo[i]] << i+1
  end
end
ans.delete([])
if ans.empty?
  puts "0"
else
  puts ans[0].size
  puts ans[0].join(" ")
end
