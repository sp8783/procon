# WA：2024/11/13

# 小課題3：bitDP（マス毎に遷移を考える）
## 直前のW+1マスにキングが存在するかどうかを管理する

h, w = gets.split.map(&:to_i)
field = h.times.map { gets.chomp.chars }
MOD = 10**9 + 7

# dp[idx][bit] : 直前のw+1の状態がbitの配置のときの、idxマス目時点でのあり得る配置数
## i, j = idx.divmod(w) として、idx = i*w+j として考える
## bit : 直前のw+1マスの配置（0:キングを置かない, 1:キングを置く）
### ex) bit = 10（'0b1010'） の場合、idxより1,3マス前にキングが存在する
dp = Array.new(h*w+1) { Array.new(1<<(w+1), 0) }
dp[0][0] = 1

# 各マスの遷移
(h*w).times do |idx|
  i, j = idx.divmod(w)
  p "idx: #{idx}, [#{i}, #{j}]"

  # 現在のマスの状態がbitの場合の遷移を考える
  (1 << (w+1)).times do |bit|
    p "  bit: #{bit}(#{bit.to_s(2).rjust(w+1, '0')})"
    now_count = dp[idx][bit]
    next if now_count.zero?  # 配置数が0の状態は遷移が存在しないのでスキップ

    # 次のマスを現在マスとした場合における、直前w+1マス状態をbit探索で求める
    # 次のマスにキングを置かない場合
    nx_bit = bit / 2  # 左端に0を追加することで、現在のマス（次のマスから見た1つ前のマス）にキングを置かない状態を表現
    dp[idx+1][nx_bit] += now_count
    dp[idx+1][nx_bit] %= MOD

    # 現在のマスにキングを置く場合
    nx_bit = bit / 2 + (1 << w)  # 左端に1を追加することで、現在のマス（次のマスから見た1つ前のマス）にキングを置く状態を表現
    ## 現在のマスにキングが置ける：「現在のマスが白マス」かつ「直前のマスにキングがいない」かつ「真上にキングが存在しない」かつ「左上にキングが存在しない」
    if field[i][j] == "." &&
      (bit & (1 << 1)).zero? &&   # 真上のマスにキングがいない
      (j == 0 || (bit & (1 << (w-1))).zero?) &&   # 左のマスにキングがいない
      (j == 0 || (bit & 1).zero?) &&   # 左上のマスにキングがいない
      (j == w - 1 || (bit & (1 << 2)).zero?)  # 右上のマスにキングがいない
      dp[idx + 1][nx_bit] += now_count
      dp[idx + 1][nx_bit] %= MOD
    end
  end
end

p dp
puts dp[-1].sum % MOD
