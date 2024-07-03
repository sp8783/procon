digits = gets.chomp.chars.map(&:to_i)

dic_origin = digits.tally
ans = 0
digits.combination(digits.size/2).each do |comb|
  dic_comb = comb.tally
  tmp_dic = dic_origin.dup
  dic_comb.each do |k, v|
    tmp_dic[k] -= v
  end
  remain = []
  tmp_dic.each do |k, v|
    remain += [k] * v
  end
  # p "comb: #{comb}, remain: #{remain}"
  ans = [comb.sort.reverse.join.to_i * remain.sort.reverse.join.to_i, ans].max
end

puts ans
