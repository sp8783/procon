require 'numo/narray'

n, m = gets.split.map(&:to_i)
board = Numo::Int32.zeros(n+3, n+3)

m.times do
  a, b, x = gets.split.map(&:to_i)
  board[a, b] += 1
  board[a, b+1] -= 1
  board[a+x+1, b] -= 1
  board[a+x+2, b+1] += 1
  board[a+x+1, b+x+2] += 1
  board[a+x+2, b+x+2] -= 1
end

board = board.cumsum(axis: 0).cumsum(axis: 1)

(0...(n+3)).each do |k|
  diag = board.diagonal(-k)
  next if diag.size < 2
  diag.store(diag.cumsum)
end

ans = (board >= 1).count_true
puts ans
