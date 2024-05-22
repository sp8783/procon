require 'set'

loop do
  n, m = gets.split.map(&:to_i)
  break if n == 0 && m == 0

  c_lst = m.times.map { gets.to_i }
  x_lst = n.times.map { gets.to_i }

  y_tb = Set.new
  c_lst.each do |c|
    (0..255).each do |i|
      y_tb.add([[[i + c, 0].max, 255].min, i])
    end
  end
  
  loss_tb = Array.new(256) do |i|
    Array.new(256) do |j|
      (i - j) ** 2
    end
  end

  dp_new = Array.new(256, 10**10)
  dp_new[128] = 0

  dp = Array.new(n+1) { Array.new(m) {[0, 10**10]} }
  dp[0] = Array.new(m) { [128, 0] }

  x_lst.each do |x|
    dp_old = dp_new.dup
    dp_new = Array.new(256, 10**10)
    x_tb = loss_tb[x]

    y_tb.each do |(j, i)|
      loss = dp_old[i] + x_tb[j]
      if loss < dp_new[j]
        dp_new[j] = loss
      end
    end
  end

  puts dp_new.min
end
