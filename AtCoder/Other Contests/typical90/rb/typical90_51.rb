def calculate_subsets(arr)
  size = arr.size
  subsets = Array.new(K + 1) { [] }
  subsets[0] = [0]

  pop_counts = Array.new(1 << size, 0)
  sums = Array.new(1 << size, 0)

  index = 0
  mask = 0
  while (mask += 1) < (1 << size)
    index += 1 if mask == (1 << index + 1)
    bits = pop_counts[mask] = pop_counts[mask - (1 << index)] + 1
    current_sum = sums[mask] = sums[mask - (1 << index)] + arr[index]
    subsets[bits] << current_sum if bits <= K && current_sum <= P
  end

  subsets.each(&:sort!)
  subsets
end

N, K, P = gets.split.map(&:to_i)
values = gets.split.map(&:to_i)
mid = N / 2

first_half_subsets = calculate_subsets(values[0...mid])
second_half_subsets = calculate_subsets(values[mid...N])

ans = 0
(0..K).each do |bit_count_1|
  bit_count_2 = K - bit_count_1
  next if bit_count_1 >= first_half_subsets.size || bit_count_2 < 0 || bit_count_2 >= second_half_subsets.size

  first_half_subsets[bit_count_1].each do |sum1|
    limit = P - sum1
    cnt = second_half_subsets[bit_count_2].bsearch_index { |sum2| sum2 > limit } || second_half_subsets[bit_count_2].size
    ans += cnt
  end
end

puts ans
