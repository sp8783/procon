def min_operations_to_reach_target(n, s, t)
  initial_state = s + ['.', '.']
  target_state = t + ['.', '.']
  queue = [[initial_state, 0]]
  visited = Set.new([initial_state])

  until queue.empty?
    current_state, moves = queue.shift
    return moves if current_state[0, n] == target_state[0, n]

    (0..n).each do |i|
      next unless current_state[i] != '.' && current_state[i + 1] != '.'

      (0..n).each do |k|
        next unless current_state[k] == '.' && current_state[k + 1] == '.'

        next_state = current_state.dup
        next_state[k], next_state[k + 1] = current_state[i], current_state[i + 1]
        next_state[i], next_state[i + 1] = '.', '.'

        unless visited.include?(next_state)
          visited.add(next_state)
          queue.push([next_state, moves + 1])
        end
      end
    end
  end

  -1
end

n = gets.to_i
s = gets.chomp.chars
t = gets.chomp.chars

if s.count("B") != t.count("B")
  puts -1
else
  puts min_operations_to_reach_target(n, s, t)
end
