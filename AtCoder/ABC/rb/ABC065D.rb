class UnionFind
  def initialize(n)
    @n = n
    @parents = Array.new(n, -1)
  end

  # 要素xが属するグループの根を返す
  def find(x)
    if @parents[x] < 0
      x
    else
      @parents[x] = find(@parents[x])
      @parents[x]
    end
  end

  # 要素xが属するグループと要素yが属するグループとを併合する
  def union(x, y)
    x = find(x)
    y = find(y)

    return if x == y

    if @parents[x] > @parents[y]
      x, y = y, x
    end

    @parents[x] += @parents[y]
    @parents[y] = x
  end

  # 要素xが属するグループのサイズ（要素数）を返す
  def size(x)
    -@parents[find(x)]
  end

  # 要素x, yが同じグループに属するかどうかを返す
  def same?(x, y)
    find(x) == find(y)
  end

  # 要素xが属するグループに属する要素をリストで返す
  def members(x)
    root = find(x)
    (0...@n).select { |i| find(i) == root }
  end

  # すべての根の要素をリストで返す
  def roots
    (0...@n).select { |i| @parents[i] < 0 }
  end

  # グループの数を返す
  def group_count
    roots.size
  end

  # {ルート要素: [そのグループに含まれる要素のリスト], ...}のHashを返す
  def all_group_members
    group_members = Hash.new { |hash, key| hash[key] = [] }
    (0...@n).each do |member|
      group_members[find(member)] << member
    end
    group_members
  end

  # print()での表示用
  # ルート要素: [そのグループに含まれる要素のリスト]を文字列で返す
  def to_s
    all_group_members.map { |r, m| "#{r}: #{m}" }.join("\n")
  end
end

n = gets.to_i
xy = n.times.map do |i|
  x, y = gets.split.map(&:to_i)
  [i, x, y]
end

uf = UnionFind.new(n)
adj = []

xy.sort_by! { |_, x, _| x }
xy.each_cons(2) do |(i, x, y), (j, x2, y2)|
  if x == x2
    uf.union(i, j)
  else
    adj << [x2 - x, i, j]
  end
end

xy.sort_by! { |_, _, y| y }
xy.each_cons(2) do |(i, x, y), (j, x2, y2)| 
  if y == y2
    uf.union(i, j)
  else
    adj << [y2 - y, i, j]
  end
end

adj.sort_by! { |w, _, _| w }
ans = 0
adj.each do |w, i, j|
  unless uf.same?(i, j)
    uf.union(i, j)
    ans += w
  end
end

puts ans
