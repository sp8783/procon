H, W = gets.split.map(&:to_i)
rs, cs = gets.split.map { |x| x.to_i - 1 }
rt, ct = gets.split.map { |x| x.to_i - 1 }
maze = H.times.map { gets.chomp.chars.map { |c| c == "." } }

q = []

start_index = rs * W + cs
# [index, 方向, カウント]
q.push([start_index, 0, 0])
q.push([start_index, 1, 0])
q.push([start_index, 2, 0])
q.push([start_index, 3, 0])

dist = Array.new(H * W, 10**10)
dxy = [[1, 0], [-1, 0], [0, 1], [0, -1]]

goal_index = rt * W + ct

while !q.empty?
  idx, vec, cnt = q.shift
  x = idx % W
  y = idx / W

  next if dist[idx] < cnt

  if idx == goal_index
    ans = cnt
    break
  end

  dxy.each_with_index do |(dx, dy), i|
    nx = x + dx
    ny = y + dy

    if 0 <= nx && nx < W && 0 <= ny && ny < H && maze[ny][nx]
      new_idx = ny * W + nx
      if i == vec
        if dist[new_idx] >= cnt
          dist[new_idx] = cnt
          q.unshift([new_idx, i, cnt]) # 同じ方向のとき優先度高いので先頭に追加
        end
      else
        if dist[new_idx] > cnt
          dist[new_idx] = cnt + 1
          q.push([new_idx, i, cnt + 1]) # 方向転換は後ろに追加
        end
      end
    end
  end
end

puts ans
