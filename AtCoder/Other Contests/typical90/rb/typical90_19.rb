n = gets.to_i
a = gets.split.map(&:to_i)

=begin

・区間DP：dp[l][r] を考える
・dp[l][r]: 区間[l, r]の要素を取り除くために必要な最小コスト
・更新式
  0. r - l = 1 のとき
    dp[l][r] = 0
  1. 最後にl, rが取り除かれる場合
    dp[l][r] = dp[l+1][r-1] + |a[l] - a[r]|
  2. それ以外の場合
    dp[l][r] = min(dp[l][k] + dp[k+1][r]) (l < k < r)

=end

dp = Array.new(2*n) { Array.new(2*n, Float::INFINITY) }
(2*n-1).times { |i| dp[i][i+1] = 0 }

(1..n).each do |w|
  width = w * 2 - 1
  (0...2*n-width).each do |l|
    r = l + width
    if width == 1
      dp[l][r] = (a[l] - a[r]).abs
      next
    end
    (l+1...r).each do |k|
      dp[l][r] = [dp[l][r], dp[l][k] + dp[k+1][r], dp[l+1][r-1] + (a[l] - a[r]).abs].min
    end
  end
end

# p dp
puts dp[0][-1]
