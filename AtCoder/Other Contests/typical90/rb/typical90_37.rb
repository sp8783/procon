class SegTree
  attr_reader :tree, :num

  def initialize(init_val, segfunc, ide_ele)
    @n = init_val.size
    @segfunc = segfunc
    @ide_ele = ide_ele
    @num = 1 << (@n - 1).bit_length
    @tree = Array.new(2 * @num, ide_ele)
    
    # 配列の値を葉にセット
    init_val.each_with_index do |val, i|
      @tree[@num + i] = val
    end
    
    # 構築していく
    (@num - 1).downto(1) do |i|
      @tree[i] = @segfunc.call(@tree[2 * i], @tree[2 * i + 1])
    end
  end

  def update(k, x)
    k += @num
    @tree[k] = x
    while k > 1
      k /= 2
      @tree[k] = @segfunc.call(@tree[2 * k], @tree[2 * k + 1])
    end
  end

  def query(l, r)
    res = @ide_ele
    l += @num
    r += @num
    while l < r
      if l.odd?
        res = @segfunc.call(res, @tree[l])
        l += 1
      end
      if r.odd?
        r -= 1
        res = @segfunc.call(res, @tree[r])
      end
      l /= 2
      r /= 2
    end
    res
  end
end

def segfunc(x, y)
  [x, y].max
end

W, N = gets.split.map(&:to_i)
cook = Array.new(N) { gets.split.map(&:to_i) }

dp = Array.new(W + 1, 0)
memo = Array.new(W + 1, 0)
seg = SegTree.new(dp, method(:segfunc), 0)

cook.each do |l, r, v|
  W.downto(l) do |j|
    m = seg.query([0, j - r].max, j - l + 1)
    if m != 0 || (l <= j && j <= r)
      seg.update(j, [memo[j], m + v].max)
      memo[j] = [memo[j], m + v].max
    end
  end
end

ans = seg.query(W, W + 1)
puts ans == 0 ? -1 : ans
