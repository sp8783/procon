# TLE：2024/11/13

# 小課題4：bitDP（不要な状態を削除）

h, w = gets.split.map(&:to_i)
field = h.times.map { gets.chomp.chars }
MOD = 10**9 + 7

def generate(n)
  if n == 1
    return [0, 1]
  else
    l = []
    generate(n - 1).each do |s|
      l << s
      l << (s | (1 << (n - 1))) if (s >> (n - 2)) & 1 == 0
    end
    return l
  end
end

# グリッド幅wに基づいた生成結果を格納
l = Array.new(w) { [] }
(0...w).each do |i|
  generate(w - i).each do |j|
    generate(i + 1).each do |k|
      l[i] << ((k << (w - i)) | j)
    end
  end
end

# ビット配列にインデックスを付与
dic = Array.new(w) { {} }
(0...w).each do |i|
  l[i].each_with_index do |k, j|
    dic[i][k] = j
  end
end

# 次の状態に遷移するためのnxテーブルの設定
nx = Array.new(2) { Array.new(w) { Array.new(l[(0 - 1) % w].size, 0) } }
(0...w).each do |i|
  l[(i - 1) % w].each_with_index do |k, j|
    # 左シフトで次のビット位置に移動
    nx[0][i][j] = dic[i][k >> 1]

    # 次の配置候補の設定（zが条件を満たす場合）
    z = (k % 4) >> 1
    z += k % 2 + (k >> w) if i % w > 0
    z += (k % 8) >> 2 if i % w < w - 1
    nx[1][i][j] = dic[i][(k >> 1) + (1 << w)] if z < 1
  end
end

# DPテーブルの初期化
d = Array.new(h * w + 1) { Array.new(l[(0 - 1) % w].size, 0) }
d[0][0] = 1

# DP計算
(0...(h * w)).each do |i|
  l[(i - 1) % w].each_with_index do |k, j|
    # キングを配置しない場合
    d[i + 1][nx[0][i % w][j]] = (d[i + 1][nx[0][i % w][j]] + d[i][j]) % MOD

    # キングを配置する場合の条件チェック
    z = (k % 4) >> 1
    z += k % 2 + (k >> w) if i % w > 0
    z += (k % 8) >> 2 if i % w < w - 1
    if z < 1 && field[i / w][i % w] == '.'
      d[i + 1][nx[1][i % w][j]] = (d[i + 1][nx[1][i % w][j]] + d[i][j]) % MOD
    end
  end
end

puts d[h * w].sum % MOD
