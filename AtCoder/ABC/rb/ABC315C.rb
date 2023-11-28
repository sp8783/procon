n = gets.to_i
ice = Array.new(n){[]}
n.times do
  f, s = gets.split.map(&:to_i)
  ice[f-1] << s
end

ans = 0
s_max = []

ice.each do |s|
  next if s.empty?
  s_max << s.max
  if s.length > 1
    s_tmp = s.sort.reverse
    ans = [ans, s_tmp[0] + s_tmp[1]/2].max
  end
end

ans = [ans, s_max.sort.reverse[0..1].sum].max
puts ans
