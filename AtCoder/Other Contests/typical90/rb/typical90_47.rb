def kmp(s)
  a = Array.new(s.length + 1, -1) # -1を無限大の代わりに使う
  j = -1  # 初期化
  s.each_with_index do |c, i|
    while j != -1 && s[j] != c
      j = a[j]
    end
    j += 1
    a[i + 1] = j
  end
  a
end

n = gets.to_i
s = gets.chomp
t = gets.chomp

# 隣接差の構築
## 1. R -> 0, G -> 1, B -> 2 に変換
## 2. 隣接差を取る
a = s.chars.map { |c| c.ord % 3 }
a = a.each_cons(2).map { |x, y| (3 + y - x) % 3 }

b = t.chars.map { |c| (240 - c.ord) % 3 }
b = b.each_cons(2).map { |x, y| (3 + y - x) % 3 }

# KMPアルゴリズムで良い対角線を探す
ans = 0
kmp_a = kmp(a)
kmp_b = kmp(b)

[[a, b, kmp_a, kmp_b], [b, a, kmp_b, kmp_a]].each do |a, b, kmp_a, kmp_b|
  # 最も長い良い対角線の探索
  i = 0
  a.length.times do |j|
    while j != a.length && a[j] != b[j - i]
      if i == j
        i += 1
        break
      end
      i = j - kmp_a[j - i]
    end
  end

  # 良い対角線の列挙
  l = a.length - i
  while l != -1
    l = kmp_b[l]
    ans += 1
  end
end

# a == b の場合、2回カウントされてしまっているので1回減らす（a,bを入れ替えたときも1回カウントされてしまっている）
ans -= 1 if a == b

puts ans
