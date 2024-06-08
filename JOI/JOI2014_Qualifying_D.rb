n = gets.to_i
keys = gets.chomp.chars

member = {"J" => 0, "O" => 1, "I" => 2}
dp = Array.new(n) { Array.new(2**3, 0) }
MOD = 10**4 + 7

n.times do |i|
  member_i = member[keys[i]]
  (2**3).times do |s|
    if i == 0
      if (s >> member_i) & 1 == 1 && (s >> 0) & 1 == 1
        dp[i][s] += 1
      end
    else
      if (s >> member_i) & 1 == 1
        (2**3).times do |t|
          if ((s >> 0) & 1 == 1 && (t >> 0) & 1 == 1) || ((s >> 1) & 1 == 1 && (t >> 1) & 1 == 1) || ((s >> 2) & 1 == 1 && (t >> 2) & 1 == 1)
            dp[i][s] += dp[i-1][t]
            dp[i][s] %= MOD
          end
        end
      end
    end
  end
end

ans = dp[n-1].sum % MOD
puts ans
