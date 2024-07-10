# 小課題1（桁DP）
# n, b, k = gets.split.map(&:to_i)
# c = gets.split.map(&:to_i)
# MOD = 10**9 + 7

# dp = Array.new(n + 1) { Array.new(b, 0) }
# dp[0][0] = 1
# n.times do |i|
#   c.each do |ci|
#     dp[i + 1].map!.with_index do |_, j|
#       (v + dp[i][(j * 10 + ci) % b]) % MOD
#     end
#   end
# end

# puts dp[n][0]


# 小課題2（行列の累乗）
## 成功例：matrixを使った場合
# require 'matrix'

# n, b, k = gets.split.map(&:to_i)
# c = gets.split.map(&:to_i)
# MOD = 10**9 + 7

# # b × b のゼロ行列を作成
# m = Matrix.zero(b)

# b.times do |i|
#   c.each do |ci|
#     m[i, (i * 10 + ci) % b] += 1
#   end
# end

# # 行列のダブリングを使って行列の累乗を計算
# def pow_matrix(m, n, mod)
#   result = Matrix.identity(m.row_size)
#   base = m

#   while n > 0
#     result = matrix_mult(result, base, mod) if n.odd?
#     base = matrix_mult(base, base, mod)
#     n /= 2
#   end

#   result
# end

# def matrix_mod(matrix, mod)
#   matrix.map { |e| e % mod }
# end

# # 行列積を計算
# def matrix_mult(a, b, mod)
#   size = a.row_size
#   c = Matrix.build(size, size) do |i, j|
#     (0...size).reduce(0) { |sum, k| (sum + a[i, k] * b[k, j]) % mod }
#   end
#   matrix_mod(c, mod)
# end

# result_matrix = pow_matrix(m, n, MOD)
# puts result_matrix[0, 0]

## 失敗例：NArrayを使った場合（行列の要素が負になる）
# require "numo/narray"

# n, b, k = gets.split.map(&:to_i)
# c = gets.split.map(&:to_i)
# MOD = 10**9 + 7

# m = Numo::Int64.zeros(b, b)
# b.times do |i|
#   c.each do |ci|
#     m[i, (i * 10 + ci) % b] += 1
#   end
# end

# def pow_matrix(m, n, mod)
#   return Numo::Int64.eye(m.shape[0]) if n == 0
#   return m if n == 1

#   half = pow_matrix(m, n / 2, mod)
#   half = half.dot(half) % mod
#   return half if n.even?

#   half.dot(m) % mod
# end

# m = pow_matrix(m, n, MOD)
# puts m[0, 0]


# 小課題3（ダブリング）
# 入力
N, B, K = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

# N の対数
LOG = 62
MOD = 1000000007

# dp[i] と dp[j] を掛け合わせて dp[i+j] を得る関数
# tj: 10^j を B で割ったあまり
def mul(dpi, dpj, tj, b, mod)
  res = Array.new(b, 0)
  p = 0
  while p < b
    q = 0
    while q < b
      m = (p * tj + q) % b
      res[m] = (res[m] + dpi[p] * dpj[q]) % mod
      q += 1
    end
    p += 1
  end
  res
end

# ten[i]: 10^(2^i) を B で割ったあまり
ten = Array.new(LOG, 10)
(1...LOG).each do |i|
  ten[i] = ten[i-1].pow(2, B)
end

# dp[2^i][r] を doubling[i][r] と書くことにする
doubling = Array.new(LOG) { Array.new(B, 0) }

# 初期化 (doubling[0] = dp[1])
C.each do |c|
  doubling[0][c % B] += 1
end

# ダブリング
(1...LOG).each do |i|
  doubling[i] = mul(doubling[i - 1], doubling[i - 1], ten[i - 1], B, MOD)
end

# ダブリングした結果をもとに答えを求める
res = Array.new(B, 0)
res[0] = 1
LOG.times do |i|
  next if N[i] == 0
  res = mul(res, doubling[i], ten[i], B, MOD)
end

puts res[0]
