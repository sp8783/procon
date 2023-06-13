n, q = gets.split().map(&:to_i)

front = Array.new(n+1, -1)
back = Array.new(n+1, -1)

q.times do |i|
  query, x, y = gets.split().map(&:to_i)
  if query == 1
    back[x] = y
    front[y] = x
  elsif query == 2
    back[x] = -1
    front[y] = -1
  else
    while front[x] != -1
      x = front[x]
    end
    ans = [x]
    while back[x] != -1
      ans << back[x]
      x = back[x]
    end
    ans = [ans.size, ans].flatten
    puts ans.join(" ")
  end
end
