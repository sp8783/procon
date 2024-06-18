n, m = gets.split.map(&:to_i)
S = n.times.map { gets.chomp.chars}

ans = n
1.upto(n) do |i|
  S.combination(i).each do |s|
    cnt_lst = Array.new(m, 0)
    s.each do |ss|
      ss.each_with_index do |sss, j|
        cnt_lst[j] = 1 if sss == "o"
      end
    end
    ans = [ans, s.size].min if cnt_lst.sum == m
  end
end

puts ans
