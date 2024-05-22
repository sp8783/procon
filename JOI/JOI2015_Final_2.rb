n = gets.to_i
A = n.times.map {gets.to_i}

dp = Array.new(n) { Array.new(n, 0) }

n.times do |length|
  n.times do |i|
    j = (i + length) % n
    if length % 2 == n % 2
      if A[i] > A[j]
        dp[i][j] = dp[(i+1)%n][j]
      else
        dp[i][j] = dp[i][(j-1)%n]
      end
    else
      dp[i][j] = [dp[(i+1)%n][j] + A[i], dp[i][(j-1)%n] + A[j]].max
    end
  end
end

puts n.times.map {|i| dp[i][(i-1)%n]}.max
