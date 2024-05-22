d, n = gets.split.map(&:to_i)
T = Array.new(d) {gets.to_i}
lst = Array.new(n) {gets.split.map(&:to_i)}

dp = Array.new(d) {Array.new(n) {Array.new(2, 0)}}

d.times do |i|
  t = T[i]
  n.times do |j|
    a, b, c = lst[j]
    if t < a || b < t
      dp[i][j] = [-1, c]
    else
      if i == 0
        dp[i][j] = [0, c]
      else
        v_max = 0
        n.times do |k|
          next if dp[i-1][k][0] == -1
          v = dp[i-1][k][0] + (c - dp[i-1][k][1]).abs
          if v_max < v
            v_max = v
            dp[i][j] = [v, c]
          end
        end
      end
    end
  end
end

puts dp[-1].map{|x| x[0]}.max
