require 'numo/narray'

n, x = gets.split.map(&:to_i)
p = gets.split.map { |x| x.to_i / 100.0 }

# dp_gの計算（dp_g[i]:1パック引いたときにi枚のカードが出る確率）
dp_g = Numo::Float64.zeros(n + 1)
dp_g[0] = 1.0

n.times do |i|
  pred_dp_g = dp_g.dup
  dp_g = Numo::Float64.zeros(n + 1)

  # ベクトル化して演算
  dp_g[1..i+1] += pred_dp_g[0..i] * p[i]
  dp_g[0..i] += pred_dp_g[0..i] * (1.0 - p[i])
end

# dp_fの計算（dp_f[i]:i枚のカードが出るまでにかかるパックの数の期待値）
dp_f = Numo::Float64.zeros(n + x + 1)

(x - 1).downto(0) do |xi|
  # t = 1.0
  # dp_g.each_with_index do |g, j|
  #   t += g * dp_f[[x, xi + j].min]
  # end
  t = 1 + dp_g[0..n].dot(dp_f[xi..(xi + n)])
  dp_f[xi] = t / (1.0 - dp_g[0])
end

puts dp_f[0]
