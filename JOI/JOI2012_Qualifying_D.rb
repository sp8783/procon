n, k = gets.split.map(&:to_i)
st = Array.new(n) {[0,1,2]}
k.times do |i|
  a, b = gets.split.map{|x| x.to_i - 1}
  st[a] = [b]
end

dp = Array.new(n){[[0,0,0],[0,0,0],[0,0,0]]}
# dp[i][]
pasta = [0,1,2]
MOD = 10000

n.times do |i|
  if i == 0
    st[i].each do |p_0|
      dp[i][p_0] = [1,0,0]
    end
  else
    pasta.product(pasta, pasta).each do |p_0, p_1, p_2|
      if st[i].include?(p_0)
        if !(p_0 == p_1 && p_1 == p_2) || i == 1
          dp[i][p_0][p_1] += dp[i-1][p_1][p_2]
          dp[i][p_0][p_1] %= MOD
        end
      else
        dp[i][p_0][p_1] = 0
      end
    end
  end
end

ans = pasta.map{|p| dp[-1][p].sum % MOD}.sum % MOD
puts ans
