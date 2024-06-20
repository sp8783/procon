def time_to_seconds(time)
  time.split(':').map(&:to_i).reduce(0) { |acc, x| acc * 60 + x }
end

loop do
  n = gets.to_i
  break if n == 0

  lst = Array.new(86410, 0)
  n.times do
    s, e = gets.split.map { |x| time_to_seconds(x) }
    lst[s] += 1
    lst[e] -= 1
  end

  ans = 0
  86405.times do |i|
    ans = [ans, lst[i]].max
    lst[i+1] += lst[i]
  end

  puts ans
end
