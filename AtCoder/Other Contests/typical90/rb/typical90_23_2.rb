# 小課題2：bitDP（行ごとに遷移を考える）
## 直前のマスにキングが存在するかどうかを管理する

h, w = gets.split.map(&:to_i)
field = h.times.map { gets.chomp.chars }
MOD = 10**9 + 7

# dp[i][bit] : i行目まで決定し、i行目がbitの配置のときの配置数
dp = Array.new(h+1) { Array.new(1<<w, 0) }
dp[0][0] = 1

# 各行の遷移
h.times do |i|
  # 現在の行の状態がbitの場合の遷移を考える
  # bit : 現在の行の配置（0:キングを置かない, 1:キングを置く）
  (1 << w).times do |bit|
    next if dp[i][bit].zero?  # 配置数が0の状態は遷移が存在しないのでスキップ

    # 次の行における状態をbit探索で求める
    # nx_bit : 次の行の配置（0:キングを置かない, 1:キングを置く）
    (1 << w).times do |nx_bit|
      flag = true

      # 左から順に、各マスに対して条件を満たすか判定
      w.times do |j|
        # 黒マスにキングを置こうとしている場合はスキップ
        if (field[i][j] == "#") && (nx_bit[j] == 1)
          flag = false
          break
        end

        # 左右にキングが連続している場合はスキップ
        if (j >= 1 && (nx_bit[j] == 1) && (nx_bit[j-1] == 1)) || (j < w-1 && (nx_bit[j] == 1) && (nx_bit[j+1] == 1))
          flag = false
          break
        end

        # 前の行のキングの攻撃範囲と被っている（前の行に「真上」「左上」「右上」にキングがいる）場合はスキップ
        if (nx_bit[j] == 1 && (bit[j] == 1 || (j >= 1 && bit[j-1] == 1) || (j < w-1 && bit[j+1] == 1)))
          flag = false
          break
        end
      end

      # 条件を満たす場合は遷移
      if flag
        dp[i+1][nx_bit] += dp[i][bit]
        dp[i+1][nx_bit] %= MOD
      end
    end
  end
end

puts dp[h].sum % MOD
