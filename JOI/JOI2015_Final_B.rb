n = gets.to_i
pieces = n.times.map { gets.to_i }

dp = Array.new(n) { Array.new(n, 0) }

if n%2 == 1
  n.times do |i|
    dp[i][(i+1)%n] = pieces[i]
  end
end

(2..n).each do |length|
  n.times do |l|
    r = l + length

    if length % 2 == n % 2
      dp[l][r%n] = [dp[l][(r-1)%n] + pieces[(r-1)%n], dp[(l+1)%n][r%n] + pieces[l]].max
    else
      if pieces[(r-1)%n] > pieces[l]
        dp[l][r%n] = dp[l][(r-1)%n]
      else
        dp[l][r%n] = dp[(l+1)%n][r%n]
      end
    end
  end
end

ans = dp.each_with_index.map { |row, i| row[i] }.max
puts ans
