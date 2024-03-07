n, t = gets.chop.split
t = t.bytes
tn = t.size

ans = []
n.to_i.times do |z|
  s = gets.chop.bytes
  sn = s.size

  if tn == sn
    c = (0...tn).count {t[_1] != s[_1]}
    next if c > 1
  elsif tn + 1 == sn
    i = (0...tn).find {t[_1] != s[_1]}
    next if i && (i...tn).any? {t[_1] != s[_1 + 1]}
  elsif tn == sn + 1
    i = (0...sn).find {t[_1] != s[_1]}
    next if i && (i...sn).any? {t[_1 + 1] != s[_1]}
  else
    next
  end
  ans << z + 1
end
puts ans.size, ans * " "
