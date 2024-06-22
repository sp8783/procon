n, k = gets.split.map(&:to_i)
s = gets.chomp.chars.map { |i| ["A", "B", "?"].index(i) }
MOD = 998244353
mask = (1 << k) - 1

# dp[i][j] = s[i-k+1..i]が["A", "B"].repeated_permutation(k)のj番目（0-indexed）の文字列に一致する ＆ 良い文字列である場合の数
dp = Array.new(n+1) { Array.new(1 << k, 0) }
(1 << k).times do |i|
  next if (0...k).all? { |j| i[j] == i[k-j-1] } || (0...k).any? { |j| i[j] != s[k-j-1] && s[k-j-1] != 2}
  dp[k][i] = 1
end
(k...n).each do |i| # s[0..i-1]を基準に、s[0..i]を調べる
  (1 << k).times do |j| # ["A", "B"].repeated_permutation(k)のj番目（0-indexed）の文字列
    2.times do |c| # AかBか
      next if s[i] != 2 && s[i] != c  # s[i]がc（"A"or"B"）と一致しない場合はスキップ
      nj = (j << 1) & mask | c  # 基準となるk文字の文字列に、c（"A"or"B"）を追加しはみ出た1文字を削除（探索したいk文字の文字列にする）
      next if (0...k).all? { |l| nj[l] == nj[k-l-1] }  # njが回分である（良い文字列ではない）場合はスキップ
      dp[i+1][nj] += dp[i][j]
      dp[i+1][nj] %= MOD
    end
  end
end

puts dp[-1].sum % MOD
