N = gets.to_i
W = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

# グローバル配列
grundys = Array.new(55) { Array.new(1555, 0) }

# Grundy数を事前計算
(0..50).each do |w|
  (0..1500).each do |b|
    mex = Array.new(1555, false)

    # 白石を使う操作
    mex[grundys[w - 1][b + w]] = true if w >= 1

    # 青石を使う操作
    if b >= 2
      (1..(b / 2)).each do |k|
        mex[grundys[w][b - k]] = true
      end
    end

    # mex関数で最小の非負整数を探す
    grundys[w][b] = mex.index(false)
  end
end

# Grundy数のXORを計算
sum_xor = 0
(0...N).each do |i|
  sum_xor ^= grundys[W[i]][B[i]]
end

puts sum_xor != 0 ? "First" : "Second"
