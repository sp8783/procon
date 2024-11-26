class LCA
  attr_reader :n, :logn, :depth, :parent, :orders

  def initialize(graph, root = 0)
    @graph = graph
    @root = root
    @n = graph.size
    @logn = (@n - 1).bit_length
    @depth = Array.new(@n, -1)
    @depth[root] = 0
    @parent = Array.new(@logn) { Array.new(@n, -1) }
    @orders = Array.new(n)
    @current_order = 0
    dfs
    doubling
  end

  def dfs
    stack = [@root]
    until stack.empty?
      u = stack.pop
      @orders[u] = @current_order
      @current_order += 1
      @graph[u].each do |v|
        next if @depth[v] != -1

        @depth[v] = @depth[u] + 1
        @parent[0][v] = u
        stack.push(v)
      end
    end
  end

  def doubling
    (1...@logn).each do |i|
      @n.times do |v|
        if @parent[i - 1][v] != -1
          @parent[i][v] = @parent[i - 1][@parent[i - 1][v]]
        end
      end
    end
  end

  def get(u, v)
    if @depth[v] < @depth[u]
      u, v = v, u
    end

    du = @depth[u]
    dv = @depth[v]

    (0...@logn).each do |i|
      if ((dv - du) >> i) & 1 == 1
        v = @parent[i][v]
      end
    end

    return u if u == v

    (@logn - 1).downto(0) do |i|
      pu = @parent[i][u]
      pv = @parent[i][v]
      if pu != pv
        u = pu
        v = pv
      end
    end

    @parent[0][u]
  end
end

n = gets.to_i
adj = Array.new(n) { [] }
(n - 1).times do
  a, b = gets.split.map(&:to_i)
  adj[a - 1] << b - 1
  adj[b - 1] << a - 1
end

lca = LCA.new(adj)

q = gets.to_i
q.times do
  k, *v = gets.split.map(&:to_i)
  v.map! { |vi| vi - 1 }
  v.sort_by! { |i| lca.orders[i] } # ordersを使って深さ優先探索の順番でソート
  ans = 0

  k.times do |i|
    ancestor = lca.get(v[i], v[(i + 1) % k])
    ans += (lca.depth[v[(i + 1) % k]] - lca.depth[ancestor])
  end

  puts ans
end
