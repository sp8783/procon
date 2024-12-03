n, w = gets.split.map(&:to_i)
a_lst = gets.split.map { |a| a.to_i - w }

edges = Array.new(n) { [] }
n.times do |i|
  input = gets.split.map(&:to_i)
  k, *c_lst = input
  c_lst.each { |c| edges[c - 1] << i }
end

ans = 0
used = Array.new(n, false)

n.times do
  (n - 1).downto(0) do |i|
    next if used[i]

    set = Set.new([i])
    tot = 0
    flg = true

    i.downto(0) do |j|
      if set.include?(j)
        unless used[j]
          tot += a_lst[j]
        end
        if tot <= 0
          flg = false
          break
        end
        edges[j].each { |k| set.add(k) }
      end
    end

    if flg
      set.each { |s| used[s] = true }
    end
  end
end

ans = a_lst.zip(used).map { |a, tf| a * (tf ? 1 : 0) }.sum
puts ans
