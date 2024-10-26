# kaigionrails
n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse
b = gets.split.map(&:to_i).sort.reverse

ans = a[-1]
flg = 0
(n-1).times do |i|
  ai = a[i]
  bi = b[i - flg]

  if ai > bi
    if flg == 1
      ans = -1
      break
    else
      ans = ai
      flg = 1
    end
  end
end

if a[-1] > b[-1]
  ans = (flg == 1) ? -1 : a[-1]
end

puts ans
