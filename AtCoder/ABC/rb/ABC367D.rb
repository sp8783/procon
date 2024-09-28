n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a = a + a[0...-1]
cum_mod_a = [0]
a.each do |ai|
  cum_mod_a << (cum_mod_a[-1] + ai) % m
end

mod_cnts = Array.new(m, 0)
ans = 0

cum_mod_a.each_with_index do |cum_ai, i|
  # p "cum_ai: #{cum_ai}, i: #{i}"
  if i >= n
    mod_cnts[cum_mod_a[i - n]] -= 1
  end
  ans += mod_cnts[cum_ai]
  if i < n
    mod_cnts[cum_ai] += 1
  end
  # p " mod_cnts: #{mod_cnts}, ans: #{ans}"
end

puts ans
