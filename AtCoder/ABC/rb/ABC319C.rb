arr = []
3.times do
  arr += gets.split.map(&:to_i)
end

bingo = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6] 
]

cnt = 0

permu = (0..8).to_a.permutation.to_a
permu.each do |per|
  flg = bingo.any? do |bin|
    a, b, _ = (per & bin).map { |i| arr[i] }
    a == b
  end
  cnt += 1 unless flg
end

puts cnt / permu.size.to_f
