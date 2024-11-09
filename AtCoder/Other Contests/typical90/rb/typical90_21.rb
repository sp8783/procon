# 強連結成分 (Strongly Connected Components) 
class SCC
  # グラフを初期化
  def initialize(n)
    @n = n
    @edges = Array.new(n) { [] }
  end

  # 有向辺を追加する
  def add_edge(from, to)
    unless 0 <= from && from < @n && 0 <= to && to < @n
      msg = "不正な引数: from=#{from} および to=#{to} は 0...#{@n} の範囲である必要があります"
      raise ArgumentError.new(msg)
    end

    @edges[from] << to
    self
  end

  # 複数の有向辺を追加する
  def add_edges(edges)
    edges.each { |from, to| add_edge(from, to) }
    self
  end

  # 引数に応じて単一または複数の辺を追加する
  def add(x, to = nil)
    to ? add_edge(x, to) : add_edges(x)
  end

  # 強連結成分のリストを返す
  # 返される成分はトポロジカル順にソートされている
  # 計算量: O(@n + @edges.sum(&:size))
  def scc
    group_num, ids = scc_ids
    groups = Array.new(group_num) { [] }
    ids.each_with_index { |id, i| groups[id] << i }
    groups
  end

  private

  # 強連結成分ごとに ID を付与する
  def scc_ids
    now_ord = 0

    visited = []
    low = Array.new(@n, 1 << 60)
    ord = Array.new(@n, -1)
    group_num = 0

    # 各頂点について深さ優先探索を行う
    (0...@n).each do |v|
      next if ord[v] != -1  # すでに訪問済みの場合はスキップ

      stack = [[v, 0]]  # スタックを用いた非再帰的な DFS

      while (v, i = stack.pop)
        if i == 0
          visited << v
          low[v] = ord[v] = now_ord
          now_ord += 1
        end

        while i < @edges[v].size
          u = @edges[v][i]
          i += 1

          if ord[u] == -1
            stack << [v, i] << [u, 0]
            break 1
          end
        end and next

        low[v] = [low[v], @edges[v].map { |e| low[e] }.min || @n].min
        next if low[v] != ord[v]  # 強連結成分の根でない場合はスキップ

        while (u = visited.pop)
          low[u] = @n
          ord[u] = group_num
          break if u == v
        end
        group_num += 1
      end
    end

    ord.map! { |e| group_num - e - 1 }
    [group_num, ord]
  end
end


n, m = gets.split.map(&:to_i)
edges = m.times.map { gets.split.map { |x| x.to_i - 1 } }

scc = SCC.new(n)
edges.each { |from, to| scc.add_edge(from, to) }

groups = scc.scc
puts groups.sum { |group| group.size * (group.size - 1) / 2 }
