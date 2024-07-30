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

h, w = gets.split.map(&:to_i)
uf = UnionFind.new(h * w)
field = Array.new(h) { Array.new(w, false) }

q = gets.to_i
q.times do
  t, *rc = gets.split.map(&:to_i)
  if t == 1
    r, c = rc.map { |x| x - 1 }
    field[r][c] = true
    [[-1, 0], [1, 0], [0, -1], [0, 1]].each do |dr, dc|
      nr, nc = r + dr, c + dc
      next if nr < 0 || nr >= h || nc < 0 || nc >= w || !field[nr][nc]
      uf.union(r * w + c, nr * w + nc)
    end

  else
    r1, c1, r2, c2 = rc.map { |x| x - 1 }
    if !field[r1][c1] || !field[r2][c2]
      puts "No"
    else
      puts uf.same?(r1 * w + c1, r2 * w + c2) ? 'Yes' : 'No'
    end
  end
end
