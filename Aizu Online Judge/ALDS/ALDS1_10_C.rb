def lcs(a, b)
  l = []
  b.each_char do |bk|
    bgn_idx = 0  # 検索開始位置
    l.each_with_index do |cur_idx, i|
      # chr_idxを計算
      chr_idx = a.index(bk, bgn_idx)
      if chr_idx.nil?
        break
      end
      l[i] = [cur_idx, chr_idx + 1].min
      bgn_idx = cur_idx
    end

    # chr_idxを計算
    chr_idx = a.index(bk, bgn_idx)
    if !chr_idx.nil?
      l << chr_idx + 1
    end
  end
  l.length
end

n = gets.to_i
n.times do
  x = gets.chomp
  y = gets.chomp
  puts lcs(x, y)
end

# 以下はTLEになる
# n = gets.to_i

# n.times do
#   x = gets.chomp
#   y = gets.chomp

#   dp = Array.new(x.size+1){Array.new(y.size+1, 0)}

#   (1..x.size).each do |i|
#     (1..y.size).each do |j|
#       if x[i-1] == y[j-1]
#         dp[i][j] = dp[i-1][j-1] + 1
#       else
#         dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
#       end
#     end
#   end
#   puts dp[x.size][y.size]
# end
