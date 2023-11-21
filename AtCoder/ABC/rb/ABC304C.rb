n, d = gets.split.map(&:to_i)
lst = n.times.map{gets.split.map(&:to_i)}

memo = [false]*n
memo[0] = true
queue = [0]

while queue.length != 0
  i = queue.shift
  n.times do |j|
    next if memo[j] || i == j

    if Math.hypot(lst[i][0] - lst[j][0], lst[i][1] - lst[j][1]) <= d
      memo[j] = true
      queue << j
    end
  end
end

memo.each do |flag|
  puts flag ? "Yes" : "No"
end
