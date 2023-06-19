n = gets.to_i
ary = n.times.map{gets.split.map(&:to_i)}
move = []

n.times do |i|
  n.times do |j|
    next if i == j

    # zip＆mapを使ったほうが遅い
    # diff = ary[j].zip(ary[i]).map{|f, s| f - s}
    diff = [ary[j][0] - ary[i][0], ary[j][1] - ary[i][1]]

    # injectを使った方が遅い
    # gcd = diff.inject(:gcd)
    gcd = diff[0].gcd(diff[1])

    # mapを使った方が速い
    move << diff.map{|x| x / gcd}
    # move << [diff[0] / gcd, diff[1] / gcd]
  end
end

puts move.uniq.size
