# 貪欲法
# n = gets.to_i
# a, b, c = gets.split.map(&:to_i)

# ans = 10000
# i = 0
# while i * a <= n
#   j = 0
#   while i * a + j * b <= n
#     k = (n - i * a - j * b) / c
#     if i * a + j * b + k * c == n
#       ans = [ans, i + j + k].min
#     end
#     j += 1
#   end
#   i += 1
# end

# puts ans


# ax + by = n - czの解を拡張ユークリッドの互除法で求める

# ax + by = gcd(a, b)の特殊解を求める
def ex_gcd(a, b)
  if b == 0
    [1, 0, a]
  else
    s, t, d = ex_gcd(b, a % b)
    [t, s - a / b * t, d]
  end
end

# ax + by = cの解(x0+x1*k, y0+y1*k)を以下の形式で返す
# [[x0, x1], [y0, y1]]
# ただし答えがない場合はnilを返す
def solve_ax_by_c(a, b, c)
  return nil if c % a.gcd(b) != 0  # 整数解が存在する条件
  gcd = a.gcd(b)
  x0, y0 = ex_gcd(a, b).map { |n| n * c / gcd }
  x1 = b / gcd
  y1 = -1 * a / gcd
  [[x0, x1], [y0, y1]]
end

n = gets.chomp.to_i
a, b, c = gets.chomp.split.map(&:to_i).sort

# ax + by = n - czの解を拡張ユークリッドの互除法で求める
P = 9999
ans = P + 1
(P+1).times do |z|
  break if n - c * z < 0  # ax + by は非負である必要がある

  # 特殊解を求める
  ni = n - c * z
  x, y = solve_ax_by_c(a, b, ni)
  next if x.nil?

  # 一般解を求める
  # 非負の整数解のうち、「x, y共に非負」&「x+yが最小」となる媒介変数kを探索する
  # a < bのため、xが最小であるケースがx+yの最小値をとる
  # x = x[0] + x[1] * k >= 0である必要があるが、x[1]の符号によって整数kの値が異なるので場合分け
  k = -1 * x[0].to_f / x[1]
  k = (x[1] > 0 ? k.ceil : k.floor)
  x = x[0] + x[1] * k
  y = y[0] + y[1] * k
  next if y < 0  # xを基準にkを設定したので、yが負である可能性がある

  if x + y + z < ans
    ans = x + y + z
  end
end

puts ans 
