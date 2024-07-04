n = gets.to_i

exit if n.odd?

ans = []
[1, 0].repeated_permutation(n) do |bits|
  next if bits.count(1) != n/2
  s = 0
  flag = true
  bits.each do |bit|
    s = (s << 1) + bit
    if s.to_s(2).count("1") < s.to_s(2).count("0")
      flag = false
      break
    end
  end
  ans << s.to_s(2).tr("10", "()") if flag 
end

ans.sort.each { |a| puts a }
