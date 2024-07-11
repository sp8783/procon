n, k = gets.split.map(&:to_i)
S = gets.chomp.chars

dic = ('a'..'z').zip(0..25).to_h
nex = Array.new(n+1) { Array.new(26, -1) }

# nex[i][c] := i文字目以降で最初に文字 c が登場する index
(n - 1).downto(0) do |i|
  ('a'..'z').each do |c|
    nex[i][dic[c]] = nex[i + 1][dic[c]]
  end
  nex[i][dic[S[i]]] = i
end

ans = ""
pos = -1
k.times do |i|
  ('a'..'z').each do |c|
    j = nex[pos + 1][dic[c]]
    if j != -1 && n - j >= k - i
      ans += c
      pos = j
      break
    end
  end
end

puts ans
