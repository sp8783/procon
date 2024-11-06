class BIT
  def initialize(n)
    @data = Array.new(1 << n.bit_length, 0)
  end
  # 加算：i番目の要素にxを加える
  def add(i, x)
    i += 1
    while i < @data.size
      @data[i] += x 
      i += (i & -i)
    end
  end
  # 区間和：[l, r)の和を求める
  def sum(l,r)
    _prefix(r) - _prefix(l)
  end
  # 累積和：[0, i)の和を求める
  def _prefix(i)
    s = 0
    while i > 0
      s += @data[i]
      i -= (i & -i)
    end
    s
  end
end

n, m = gets.split.map(&:to_i)
start_count = Array.new(n + 1, 0)    # 各点を始点とする区間の数を格納
end_points = Array.new(n + 1) { [] } # 各点を終点とする区間の始点リスト

m.times do
  l, r = gets.split.map(&:to_i)
  start_count[l] += 1
  end_points[r] << l
end

# BITを使って交差数をカウント
bit = BIT.new(n + 1)
ans = 0

(1..n).each do |i|
  # 現在の点を終点とする各区間の始点について処理
  end_points[i].each do |l|
    bit.add(l, -1) # BITから現在の区間の始点を削除
  end

  # 現在の点を終点とする区間に対して交差する区間をカウント
  end_points[i].each do |l|
    ans += bit.sum(l + 1, i)
  end

  # 現在の点を始点とする区間の数をBITに追加
  bit.add(i, start_count[i])
end

puts ans
