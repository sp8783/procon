n = gets.to_i
A = (2 * n - 1).times.map { gets.split.map(&:to_i) }

def calc(arr, c = 0)
  return c if arr.empty?

  tmp = []
  x = arr.min
  (arr - [x]).each do |y|
    cc = c ^ A[x][y - x - 1]
    tmp << calc(arr - [x, y], cc)
  end
  tmp.max
end

ans = calc([*0...(2 * n)])
puts ans
