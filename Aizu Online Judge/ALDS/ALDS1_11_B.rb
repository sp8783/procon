n = gets.to_i
edge = n.times.map {
  u, k, *v = gets.split.map(&:to_i)
  v.map{ |vi| vi - 1}.sort!
}

# p edge

queue = [0]
ans = Array.new(n){[-1, -1]}
time = 1
ans[0][0] = time
until queue.empty?
  u = queue[-1]
  # puts "▼time: #{time}"
  # p u
  # p queue
  if edge[u].empty?
    time += 1
    ans[u][1] = time
    queue.pop
  else
    v = edge[u].shift
    if ans[v][0] == -1
      time += 1
      ans[v][0] = time
      queue << v
    end
  end

  # puts "edge: #{edge}"
  # p queue
  # p ans

  if queue.empty?
    v = ans.index{|a| a[0] == -1}
    unless v.nil?
      queue << v
      time += 1
      ans[v][0] = time
    end
  end
end

ans.each_with_index do |(start, goal), i|
  puts "#{i + 1} #{start} #{goal}"
end
